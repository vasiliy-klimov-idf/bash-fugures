#!/bin/bash 

length(){
    header="__"
    footer="¯¯" 

    header_length=$1
    for ((i = 0 ; i < $header_length ; i++)); do
        space=$space" "     #recursive cancat
        header=$header"_"   #recursive cancat
        footer=$footer"¯"   #recursive cancat
    done
}

height(){
    line="|$space|"
    line_count=$1
    for ((i = 0 ; i < $line_count ; i++)); do
        line="$line\n|$space|" 
    done
}

figure_gen(){
    length $1
    height "$2 / 2"

if [ "$1" -eq "$2" ];then
    figure_name="Square"
else
    figure_name="Rectangle"
fi

echo -e "$figure_name
$header
$line
$footer"

echo "length > $1"
echo "height > $2"

}

figure_gen 20 15
