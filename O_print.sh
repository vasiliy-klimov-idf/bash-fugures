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
        space_in="$space_in⠀$byte⠀"
    done
}

lines(){
    header_space_line="."
    footer_space_line="."
    for ((i = 0 ; i < $1 ; i++)); do
        header_space_line=".$header_space_line."
        footer_space_line="..$footer_space_line"
    done
}

print_octagon(){
    space_init_in $1
    space_init_out $1
    
    lines $1   
    space_in2="$space_in " 

    echo -e "$space_out .$header_space_line$header_space_line "
    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in⠀⠀"
        space_init_out $i
        echo -e $space_out"."$space_in$space_in2"."  
    done

    for ((j = $1 ; j > 0 ; j--)); do
    echo -e "$space_out."$space_in $space_in2 "."  
    done
    echo -e "$space_out."$space_in$space_in2".."  
    for ((k = $1*2 ; k > 0 ; k--)); do
        space_out="$space_out⠀"
        space_init_in $k
        echo -e " .$space_in2.$space_out .$space_in2 ."
    done

    echo -e " $footer_space_line.. $space_in2 $footer_space_line..."
}

print_octagon 5
