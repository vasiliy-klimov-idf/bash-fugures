#!/bin/bash

space_init_out(){
    space_out=""
    for ((i = 0 ; i < $1 ; i++)); do
        space_out="⠀$space_out"
    done
}

print_trig(){
var=$1
let "var /= 2"


    space_init_out $1
    echo -e "$space_out /\ "

    footer="##"
    for ((i = 0 ; i < $var ; i++)); do
        footer="#$footer#"
    done


    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in ⠀"
        space_init_out $i
        echo -e $space_out"/"$space_in"\\"
            if [ "$i" == "$var" ];then
                echo $space_out"/$footer\\"
            fi
    done
       
}

print_trig 10

