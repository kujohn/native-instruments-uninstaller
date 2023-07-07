#!/bin/bash
read -p "Enter Native Instrument Library: " NAME

PLIST="com.native-instruments.$NAME.plist"
XML="$NAME.xml"

declare -a arr=(
  "/Users/Shared/$NAME Library"
  "$HOME/Library/Preferences/$PLIST"
  "/Library/Preferences/$PLIST"
  "/Library/Application Support/Native Instruments/$NAME"
  "/Library/Application Support/Native Instruments/Service Center/$XML"
)

echo ""
for i in "${arr[@]}"
  do
    if [ -d "$i" ] || [ -f "$i" ] ;then
      echo "FOUND: $i"
    else
      echo "NOT FOUND: $i"
    fi
  done

printf 'Do you want to remove these files/folders?'
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then 
  for i in "${arr[@]}"
    do
      rm -rf "$i"
    done
  echo "All Done. Restart computer."
else
  echo ""
fi

