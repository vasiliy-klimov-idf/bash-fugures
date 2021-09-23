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
    header_space_line="_"
    footer_space_line="¯"
    middle_line="--"
    for ((i = 0 ; i < $1 ; i++)); do
        header_space_line="__$header_space_line"
        footer_space_line="¯$footer_space_line¯"

        middle_line="-$middle_line-"
    done
}

print_A(){
    var=$1
    let "var /= 2"

    space_init_out $1
    echo -e "$space_out /\ "

    borderr="##"
    for ((i = 0 ; i < $var ; i++)); do
        footer="#$border#"
    done

    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in ⠀"
        space_init_out $i
        echo -e $space_out"/"$space_in"\\"
            if [ "$i" == "$var" ];then
                echo "$space_out/$border\\"
            fi
    done
}

print_B(){

    space_init_in $1
    lines $1   
    
    echo -e "/$header_space_line\ "
    for ((i = $1/2 ; i > 0 ; i--)); do
        space_in="$space_in⠀"
        echo -e "|$space_in \\"  
    done
    
    echo -e "|$space_in |"  
    space_init_in $1
    for ((k = $1/2 ; k > 0 ; k--)); do
        space_init_out $k
        echo -e "|"$space_out $space_in"/" 
    done
    
    echo -e "|$space_in |"  

    for ((i = $1/2; i > 0 ; i--)); do
        space_in="$space_in⠀"
        echo -e "|$space_in \\"  
    done
        echo -e "|$space_in |"  
    space_init_in $1
    for ((k = $1/2 ; k > 0 ; k--)); do
        space_init_out $k
        echo -e "|"$space_out $space_in"/" 
    done

    echo -e "\\$footer_space_line/"
}

print_C(){
    space_init_in $1

    lines $1   
    
    echo -e "  /$header_space_line\ "
    echo -e " /$space_in "  
    for ((i = $1/2 ; i > 0 ; i--)); do
        space_in="$space_in⠀"
        echo -e "|$space_in "  
    done
    
    space_init_in $1
    for ((k = $1/2 ; k > 0 ; k--)); do
        space_init_out $k
        echo -e "|"
    done
        
    space_init_in $1
    for ((k = $1/2 ; k > 0 ; k--)); do
        space_init_out $k
        echo -e "|"$space_out $space_in"" 
    done
    echo -e " \\$space_in "  
    echo -e "  \\$footer_space_line/"
}

print_D(){
    space_init_in $1
    lines $1   
    
    echo -e "/$header_space_line\ "
    for ((i = $1/2 ; i > 0 ; i--)); do
        space_in="$space_in⠀"
        echo -e "|$space_in \\"  
    done

    for ((j = $1/2 ; j > 0 ; j--)); do
    echo -e "|$space_in |"  
    done

    space_init_in $1
    for ((k = $1/2 ; k > 0 ; k--)); do
        space_init_out $k
        echo -e "|"$space_out $space_in"/" 
    done

    echo -e "\\$footer_space_line/"
}

print_E(){
    space_init_in $1
    lines $1   
    var=$[$1/2]
    
    echo -e "  /$header_space_line\ "
    echo -e " /$space_in "  

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

print_F(){
    space_init_in $1
    lines $1   
    var=$[$1/2]
    
    echo -e "  /$header_space_line\ "
    echo -e " /$space_in "  

    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in⠀"
        
        if [ $i == "$var" ];then
        echo " |$middle_line|"
        fi
        echo -e " |$space_in "  
    done

    for ((i = $1/2 ; i > 0 ; i--)); do
        echo -e " |$space_in "  
    done
    echo -e " \\$space_in " 
}

print_N(){
    space_init_out $1
    
    echo -e "|$space_in\\$space_out |"
    for ((i = $1 ; i > -1 ; i--)); do
        space_in="$space_in "
        space_init_out $i
        echo -e "|$space_in\\$space_out|"
    done
}


print_R(){
    space_init_in $1/2
    space_init_out $1/2
    
    lines $1/2
    space_in2="$space_in " 

    echo -e "$space_out .$header_space_line$header_space_line."
    for ((i = $1/2 ; i > 0 ; i--)); do
        space_in="$space_in⠀⠀"
        space_init_out $i
        echo -e "$space_out.$space_in$space_in2 ."
    done

    for ((j = $1/2 ; j > 0 ; j--)); do
    echo -e "$space_out.$space_in $space_in2."  
    done
    echo -e "$space_out.$space_in$space_in2.."  
    for ((k = $1 ; k > 0 ; k--)); do
        space_out="$space_out⠀"
        space_init_in $k
        echo -e " .$space_in2.$space_out .$space_in2 ."
    done

    echo -e " $footer_space_line.. $space_in2 $footer_space_line..."
}

print_V(){
    for ((i = $1 ; i > 0 ; i--)); do
        space_out="$space_out⠀"
        space_init_in $i
        echo -e $space_out\\"$space_in/"
    done

    echo -e "$space_out \/"
}

print_W(){
    space_init_in $1
    echo -e "\\ $space_in /\\ $space_in /"
    for ((i = $1 ; i > 0 ; i--)); do
        space_out="$space_out⠀"
        space_init_in $i
        echo -e $space_out\\"$space_in/$space_out$space_out\\$space_in/"
    done

    echo -e "$space_out \/$space_out $space_out \/"
}

print_X(){
    for ((i = $1/2 ; i > 0 ; i--)); do
        space_out="$space_out⠀"
        space_init_in $i
        echo -e $space_out\\"$space_in/"
    done

    echo -e "$space_out \/"
    space_init_out $1/2
    echo -e "$space_out /\ "

    for ((i = $1/2 ; i > 0 ; i--)); do
        space_init_out $i
        space_in2="⠀$space_in2⠀"
        echo -e $space_out"/"$space_in2"\\"
    done
}

print_Y(){
    for ((i = $1/2 ; i > 0 ; i--)); do
        space_out="$space_out⠀"
        space_init_in $i
        echo -e $space_out\\"$space_in /"
    done

    echo -e "$space_out \ /"
    space_init_out $1/2
    for ((i = $1/2 ; i > 0 ; i--)); do
        space_in="$space_in ⠀"
        echo -e  "$space_out  |"
    done
}

print_Z(){
    lines $1
    
    echo -e $header_space_line
    space_init_out $1
    for ((i = $1 ; i > 0 ; i--)); do
        space_in="$space_in ⠀"
        space_init_out $i
        echo -e "$space_out$space_out"/"$space_in"
    done
    echo "/"
    echo -e $footer_space_line
}

