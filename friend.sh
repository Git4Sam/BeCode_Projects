#!/bin/bash

# File with jokes
JOKE_FILE="./jokes.txt"

# Function to print a message
print() {
  echo "🤖 FriendBot: $1"
}

# Function to tell a joke
tell_joke() {
  local joke=$(shuf -n 1 "$JOKE_FILE")
  print "$joke"
}

# Function to tell the current date and time
tell_time() {
  print "The current date and time is: $(date)"
}

# Function to calculate a simple equation
calculate() {
  local result=$(echo "$1" | bc 2>/dev/null)
  if [[ $? -eq 0 ]]; then
    print "The result of $1 is $result"
  else
    print "Invalid equation!"
  fi
}

# Main logic for interactive mode
interactive_mode() {
  while true; do
    echo -n "🤖 FriendBot: "
    read -r input
    case "$input" in
      "tell me a joke") tell_joke ;;
      "what's the time") tell_time ;;
      "calculate "*)
        equation="${input#calculate }"
        calculate "$equation"
        ;;
      "exit") print "Goodbye!"; break ;;
      *) print "I didn't understand that." ;;
    esac
  done
}

# Main logic for non-interactive mode
non_interactive_mode() {
  case "$1" in
    "tell me a joke") tell_joke ;;
    "what's the time") tell_time ;;
    "calculate "*)
      equation="${1#calculate }"
      calculate "$equation"
      ;;
    *) print "I didn't understand that." ;;
  esac
}

# Determine if the script is in interactive or non-interactive mode
if [[ -t 0 ]]; then
  interactive_mode
else
  non_interactive_mode "$@"
fi

