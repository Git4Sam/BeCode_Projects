# FriendBot

## About
FriendBot is a simple Bash script that acts as a friendly assistant. It can:
- Tell random jokes from a predefined file.
- Display the current date and time.
- Perform basic calculations.
- Operate in both interactive and non-interactive modes.

## Features
1. **Tell a Joke**:
   - Jokes are randomly selected from a file (`jokes.txt`).
   - Example command: `tell me a joke`

2. **Tell the Time**:
   - Displays the current date and time.
   - Example command: `what's the time`

3. **Perform Calculations**:
   - Accepts simple mathematical expressions.
   - Example command: `calculate 4 + 5`

4. **Interactive Mode**:
   - Runs interactively, allowing continuous input.
   - Example: Run the script and type commands as prompted.

5. **Non-Interactive Mode**:
   - Accepts a single command as an argument.
   - Example: `./friend.sh "tell me a joke"`

## Installation
1. Clone the repository or download the script.
2. Ensure the script has executable permissions:
   ```bash
   chmod +x friend.sh
   ```

## Usage
### Interactive Mode
Run the script without any arguments to enter interactive mode:
```bash
./friend.sh
```

Example commands in interactive mode:
- `tell me a joke`
- `what's the time`
- `calculate 8 / 2`
- `exit`

### Non-Interactive Mode
Run the script with a single command as an argument:
```bash
./friend.sh "tell me a joke"
```

## Requirements
- Bash shell
- `shuf` command (pre-installed on most Linux systems)
- `bc` (for calculations)

## Adding to PATH
To run FriendBot from anywhere:
1. Move the script to a directory in your PATH:
   ```bash
   mv friend.sh /usr/local/bin/
   ```
2. Run it directly:
   ```bash
   friend.sh
   ```

## Notes
- Ensure `jokes.txt` is in the same directory as `friend.sh` or update the `JOKE_FILE` path in the script.
- For additional jokes, append them to `jokes.txt`.

## Example Jokes
- Why don't scientists trust atoms? Because they make up everything.
- What do you call a bear with no teeth? A gummy bear.

Happy chatting with FriendBot!

