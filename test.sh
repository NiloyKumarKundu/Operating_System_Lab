file=$(cat channel.txt);

one=0;
six=0;
eleven=0;

while read -r line
do
#name = $line

name="$line"

if [ $name = "CH" ]
then
continue
fi

if [ $name == "1" ]
then
let "one = one + 1";

elif [ $name == "2" -o $name == "3" -o $name == "4" -o $name == "5" ]
then
let "one = one + 1"
let "six = six + 1"


elif [ $name == "6" ]
then
let "six = six + 1"

elif [ $name == "7" -o $name == "8" -o $name == "9" -o $name == "10" ]
then
let "six = six + 1"
let "eleven = eleven + 1"

elif [ $name == "11" ]
then
let "eleven = eleven + 1"

else
let "eleven = eleven + 1"
fi
echo "Reading Channel Number - $name";
done < channel.txt

echo "";
echo "";
echo "Number of overlapping in channel 1 is $one";
echo "Number of overlapping in channel 6 is $six";
echo "Number of overlapping in channel 11 is $eleven";
echo "";


if [ $one -lt $six -a $one -lt $eleven ]
then
echo "Best Channel is 1";
elif [ $six -lt $one -a $six -lt $eleven ]
then
echo "Best Channel is 6";
else
echo "Best Channel is 11";
fi



