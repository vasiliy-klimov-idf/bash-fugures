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
        space_in="$space_in⠀⠀"
    done
}

lines(){
    header_space_line="¯"
    footer_space_line="_"
    for ((i = 0 ; i < $1 ; i++)); do
        header_space_line="¯$header_space_line¯"
        footer_space_line="__$footer_space_line"
    done
}

print_octagon(){
    space_init_in $1

    lines $1   
    
    echo -e "/$header_space_line\ "
    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in⠀"
        echo -e "|$space_in \\"  
    done

    for ((j = $1/2 ; j > 0 ; j--)); do
    echo -e "|$space_in |"  
    done


    space_init_in $1
    for ((k = $1 ; k > 0 ; k--)); do
        space_init_out $k
        echo -e "|"$space_out $space_in"/" 
    done

    echo -e "\\$footer_space_line/"
}

print_octagon 5
