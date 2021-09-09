#!/bin/bash

space_init_out(){
    space_out=""
    for ((i = 0 ; i < $1 ; i++)); do
        space_out="⠀$space_out"
    done
}

print_trig(){
    space_init_out $1
    echo -e "$space_out /\ "

    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in ⠀"
        space_init_out $i
        echo -e $space_out"/"$space_in"\ "
    done
    
    footer="--"
    for ((i = 0 ; i < $1 ; i++)); do
        footer="--$footer"
    done
    echo " $footer"
}

print_trig 20
