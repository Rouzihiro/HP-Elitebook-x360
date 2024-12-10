#!/bin/sh

# Check if a specific session is set
if [ -n "$1" ]; then
    case $1 in
        i3)
            exec i3
            ;;
        sway)
            exec sway
            ;;
        qtile)
            exec qtile start
            ;;
        *)
            echo "Invalid session: $1"
            exit 1
            ;;
    esac
fi

# Default session: i3
exec i3

