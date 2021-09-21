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
    middle_line="--"
    for ((i = 0 ; i < $1 ; i++)); do
        header_space_line="¯$header_space_line¯"
        footer_space_line="__$footer_space_line"
        middle_line="-$middle_line-"
    done
}

print_octagon(){
    space_init_in $1
    lines $1   
    
    echo -e "  /$header_space_line\ "
    echo -e " /$space_in "  

var=$[$1/2]

    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in⠀"
        
        if [ $i == "$var" ];then
        echo " |$middle_line|"
        fi
        
        echo -e " |$space_in "  
    done
    
    echo -e " \\$space_in "  
    echo -e "  \\$footer_space_line/"
}

print_octagon 5
