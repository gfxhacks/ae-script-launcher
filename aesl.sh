#!/bin/bash
# Usage: aesl {AE version ID e.g. 2021} {path/to/script.jsx}

# Title: aesl.sh
# Version: 1.0.0
# Desc: Launch .jsx script files in AE
# Author: gfxhacks.com

# check if number of args is exactly 2
if [[ $# -eq 2 ]]; then

  AEVERSION="$1"
  JSXFILE="$2"
  EXT=`rev <<< "$2" | cut -d"." -f1 | rev`
  AEPATH="/Applications/Adobe After Effects $AEVERSION"

  # check if specified AE version folder exists
  if [[ -d "$AEPATH" ]]; then
    if [[ -f "$JSXFILE" && -e "$JSXFILE" && $EXT = "jsx" ]]; then
      osascript -l JavaScript -e "ae = Application('Adobe After Effects $AEVERSION'); ae.activate(); ae.doscriptfile('$JSXFILE');"
    else
      printf "\n$JSXFILE not found, or incorrect file type. Try again!\n\n"
    fi
  else
    printf "\nAE version not found at:\n$AEPATH\nCheck available versions in the ~/Applications folder...\n\n"
  fi


else
  printf "\nMissing arguments!\n\nRequires:\n1: AE version number\n2: .jsx script file\n\n"
fi
