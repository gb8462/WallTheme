#!/bin/bash

# Basic Script for switching Wallpaper Themes.

clear
echo "Please Select which Themes you would like to use:"
echo "| [1]Chill | [2]Ninomae Ina'nis |"
read -p "Theme: " Themes
if [ "$Themes" == "1" ]; then
  echo "test 1"
elif [ "$Themes" == '2' ]; then
  echo "test 2"
else
  echo "invalid input"
fi
