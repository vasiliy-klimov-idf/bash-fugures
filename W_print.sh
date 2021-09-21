#!/bin/bash

space_init_out(){
    space_out=""
    for ((i = 0 ; i < $1 ; i++)); do
        space_out="⠀$space_out"
    done
}
space_init_in(){
    space_in=""
    for ((i = 0 ; i < $1 ; i++)); do
        space_in=" $space_in "
    done
}

print_w(){
    space_init_in $1
    echo -e "\\ $space_in /\\ $space_in /"
    for ((i = $1 ; i > 0 ; i--)); do
        space_out="$space_out⠀"
        space_init_in $i
        echo -e $space_out\\"$space_in/$space_out$space_out\\$space_in/"
    done

    echo -e "$space_out \/$space_out $space_out \/"
}

print_w 15


