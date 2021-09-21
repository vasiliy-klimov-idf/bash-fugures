#!/bin/bash

space_init_out(){
    space_out=""
    for ((i = 0 ; i < $1 ; i++)); do
        space_out="⠀$space_out"
    done
}

print_n(){
    
    space_init_out $1
    echo -e "|$space_in\\$space_out |"
    for ((i = $1 ; i > -1 ; i--)); do
        space_in="$space_in "
        space_init_out $i
        echo -e "|$space_in\\$space_out|"
    done
    
}

print_n 15
