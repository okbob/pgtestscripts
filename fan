#!/usr/bin/bash

LEVEL="auto"

case $1 in
  "--max")
    LEVEL="full-speed"
    ;;

  "--full")
    LEVEL="full-speed"
    ;;

  "full")
    LEVEL="full-speed"
    ;;

  "-f")
    LEVEL="full-speed"
    ;;

  "f")
    LEVEL="full-speed"
    ;;

  "-m")
    LEVEL="full-speed"
    ;;

  "m")
    LEVEL="full-speed"
    ;;


  "*")
    LEVEL="auto"
    ;;

esac

sudo modprobe -r thinkpad_acpi && sudo modprobe thinkpad_acpi
sudo echo level $LEVEL | sudo tee /proc/acpi/ibm/fan
