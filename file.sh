#!/bin/bash

echo "--- File Operator Test ---"
echo "Enter the name of a file or directory to check:"
read target

# -e: Does it even exist?
if [ -e "$target" ]; then
    echo "-e: '$target' exists."

    # -f: Is it a regular file?
    if [ -f "$target" ]; then
        echo "-f: It is a file."
    fi

    # -d: Is it a directory?
    if [ -d "$target" ]; then
        echo "-d: It is a directory."
    fi

    # -s: Is it empty?
    if [ -s "$target" ]; then
        echo "-s: The file is NOT empty."
    else
        echo "-s: The file IS empty."
    fi

    # -r, -w, -x: Permissions
    [ -r "$target" ] && echo "-r: You have Read permission."
    [ -w "$target" ] && echo "-w: You have Write permission."
    [ -x "$target" ] && echo "-x: You have Execute permission."

else
    echo "-e: '$target' does not exist in this folder."
fi
