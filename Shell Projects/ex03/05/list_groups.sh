#!/bin/bash
groups=$(groups $1)
for group in $groups; do
  echo "$1 is part of the group $group"
done

