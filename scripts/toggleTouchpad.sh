#!/bin/sh
STATE_FILE=/tmp/touchpad_state

if [ "$(cat $STATE_FILE 2>/dev/null)" = "off" ]; then
    hyprctl keyword "device[synaptics-tm3157-007]:enabled" true
    echo on > $STATE_FILE
else
    hyprctl keyword "device[synaptics-tm3157-007]:enabled" false
    echo off > $STATE_FILE
fi
