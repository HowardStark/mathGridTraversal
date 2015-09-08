#!/bin/bash

coinSolve() {
    if [[ $# == 1 ]]
    then
        TOTAL=$(($1 + 1))
        SUBTRACT=$1
        TOTAL_F=$(factorial $TOTAL)
        SUBTRACT_F=$(factorial $SUBTRACT)
        ANSWER=$(echo "$TOTAL_F / $SUBTRACT_F" | bc -l)
        echo $ANSWER
    fi
}

gridSolve() {
    if [[ $# == 2 ]]
    then
        GRID_X=$(factorial $1)
        GRID_Y=$(factorial $2)
        GRID_TOTAL=$(($GRID_X + $GRID_Y))
        GRID_TOTAL_F=$(factorial $GRID_TOTAL)
        ANSWER=$(echo "$F_GRID_TOTAL / $GRID_X / $GRID_Y" | bc -l)
        echo $ANSWER
    else
        echo "0"
    fi
}

cubeSolve() {
    if [[ $# == 3 ]]
    then
        GRID_X=$(factorial $1)
        GRID_Y=$(factorial $2)
        GRID_Z=$(factorial $3)
        GRID_TOTAL=$(($GRID_X + $GRID_Y + $GRID_Z))
        GRID_TOTAL_F=$(factorial $GRID_TOTAL)
        ANSWER=$(echo "$F_GRID_TOTAL / $GRID_X / $GRID_Y / $GRID_Z" | bc -l)
        echo $ANSWER
    else
        echo "0"
    fi
}

factorial() {
    if [ $1 -gt 1 ]; then
        i=`expr $1 - 1`
        j=$(echo "$1 * $(factorial $i)" | bc )
        echo $j
    else
        echo 1
    fi
}

if [[ $# -lt 1 ]]
then
    echo "Not enough arguments..."
elif [[ $# == 1 ]]
then
    echo $(coinSolve $1)
elif [[ $# == 2 ]]
then
    echo $(squareSolve $1 $2)
elif [[ $# == 3 ]]
then
    echo $(cubeSolve $1 $2 $3)
elif [[ $# -gt 3 ]]
then
    echo "Too many arguments..."
fi
