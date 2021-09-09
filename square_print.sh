#!/bin/bash 

# Start border
# header=" " 
header="##" 
figure_name="Rectangle"

length(){
    header_length=$1
    for ((i = 0 ; i < $header_length ; i++)); do
        space=$space" "     #recursive cancat
        header=$header"#"   #recursive cancat
        footer=$header      #recursive cancat
    done
}

height(){
    line="@$space@"
    line_count=$1
    for ((i = 0 ; i < $line_count ; i++)); do
        line="$line\n@$space@" 
    done
}

figure_gen(){
    length $1
    height "$2 / 2"

if [ "$1" -eq "$2" ];then
    figure_name="Square"
fi

echo -e "$figure_name
$header
$line
$footer
"

echo "length > $1"
echo "height > $2"

}

figure_gen 28 28
