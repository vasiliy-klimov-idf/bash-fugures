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

print_square(){
    space_in=""
    space_init_in $1
    space_init_out $1
    
    lines $1   
    echo -e "_$footer_space_line"
    space_init_out $i 
    for ((k = $1 ; k > 0 ; k--)); do
        space_out="$space_out⠀"
        echo -e "|"$space_in"|"  
    done
    echo -e "$header_space_line¯"
    
}

print_trig(){
    space_in=""
    space_init_out $1
    echo -e "$space_out /\ "
    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in ⠀"
        space_init_out $i
        echo -e $space_out"/"$space_in"\ "
    done

    footer="¯¯"
    for ((i = 0 ; i < $1 ; i++)); do
        footer="¯¯$footer"
    done
    echo " $footer"
}

print_romb(){
    space_in=""
    space_init_out $1
    echo -e "$space_out /\ "

    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in ⠀"
        space_init_out $i
        echo -e $space_out"/"$space_in"\        "
    done
    
    space_init_out $i 
    for ((i = $1 ; i > 0 ; i--)); do
        space_out="$space_out⠀"
        space_init_in $i
        echo -e $space_out\\"$space_in/"
    done
    echo -e "$space_out \/"
}

print_octagon(){
    space_in=""
    space_init_in $1
    space_init_out $1
    
    lines $1*2   
    space_in2="$space_in "
    
    echo -e "$space_out /$header_space_line\ "
    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in⠀⠀"
        space_init_out $i
        echo -e $space_out"/"$space_in$space_in2"\\"  
    done
    for ((j = $1 ; j > 0 ; j--)); do
    echo -e "$space_out|"$space_in$space_in2"|"  
    done

    space_init_out $i
    space_in2="$space_in "
    for ((k = $1 ; k > 0 ; k--)); do
        space_out="$space_out⠀"
        space_init_in $k
        echo -e $space_out\\"$space_in2$space_in/"
    done

    echo -e "$space_out \\$footer_space_line/"
}

print_hexagon(){
    space_in=""
    space_init_in $1
    space_init_out $1
    
    lines $1   
    space_in2="$space_in "
    
    echo -e "$space_out /$header_space_line\ "
    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in⠀⠀"
        space_init_out $i
        echo -e $space_out"/"$space_in "\\"  
    done

    space_init_out $i 
    for ((k = $1 ; k > 0 ; k--)); do
        space_out="$space_out⠀"
        space_init_in $k
        echo -e $space_out\\"$space_in2$space_in/"
    done

    echo -e "$space_out \\$footer_space_line/"
}

select_figure_size(){
    echo -e "Input figure size: "
    read -r -N 2 input
    echo "" 
}

echo -e "Select figure for print:"
    select opt in "Square" "Triangulare" "Romb" "Octagon" "Hexagon"; 
    do
        case $opt in
        "Square")
            select_figure_size
            print_square $input
            break
            ;;
        "Triangulare")
            select_figure_size
            print_trig $input
            break
            ;;
        "Romb")
            select_figure_size
            print_romb $input
            break
            ;;
        "Octagon")
            select_figure_size
            print_octagon $input
            break
            ;;
        "Hexagon")
            select_figure_size
            print_hexagon $input
            break
            ;;
        *) 
            echo "invalid option $REPLY"
            ;;
        esac
    done
