#!/bin/bash



ifconfig >> prac.txt;
cat prac.txt;

# find wifi id
file="prac.txt";
name=($(cat "$file" | grep -E wl?));
echo $name >> wifiname.txt;
wifiname=($(cat wifiname.txt | sed 's/.$//'));
echo $wifiname;
