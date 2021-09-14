#!/bin/bash

space_init_out(){
    space_out=""
    for ((i = 0 ; i < $1 ; i++)); do
        space_out="$space_out⠀"
    done
}
space_init_in(){
    space_in=" "
    for ((i = 0 ; i < $1 ; i++)); do
        space_in="$space_in"
    done
}
length(){
    header="///"
    footer="//" 

    header_length=$1
    for ((i = 0 ; i < $header_length ; i++)); do
        header=$header"/"   #recursive cancat
        footer=$footer"/"   #recursive cancat
    done
}

print_x(){
    length $1*2
    echo $header
    space_init_out $1
    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in ⠀"
        space_init_out $i
        echo -e $space_out$space_out "/" $space_in""
    done
    echo " /"
    echo $footer
}

print_x 14
