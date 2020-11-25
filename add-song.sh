#!/bin/sh
# -------------------------------------------------------------------
# Convenience shell script to add a new song analysis to this repo. |
# -------------------------------------------------------------------

if [ -z "$1" ]; then
    echo "Usage: $0 <song name>\n"
    echo "Example:\n"
    echo "    $0 \"SG Lewis - Impact (Feat. Robyn & Channel Tres)\"\n"
    exit
fi

filename=$(./slugify.sh -lx "$1" | awk '{print $1".md"}')
echo "# Song Analysis: $1\n" > $filename
echo "* [$1](./$filename)" >> README.md
