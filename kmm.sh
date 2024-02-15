#!/bin/bash
#
# Script to keep mouse pointer moving
# 
# The mouse pointer will move around its current position on the screen, i.e. around any position
# on the screen where you place the pointer.
#
# Set LENGTH to 0 if you do not want the mouse pointer to move.
# Set LENGTH to 1 if you want the mouse pointer to move just a tiny fraction.
# Set LENGTH to e.g. 100 if you want to see more easily the mouse pointer move.
LENGTH=100
#
# Set DELAY to the desired number of seconds between each move of the mouse pointer.
DELAY=60
#
while true
do
        for ANGLE in 0 90 180 270
        do
            xdotool mousemove_relative --polar $ANGLE $LENGTH
            echo $(date)
            sleep $DELAY
        done
done
