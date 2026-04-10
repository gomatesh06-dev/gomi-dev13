#date: 2/4/2026
#description: to perform arithmetic operations in a single script


echo "enter the values to perform a arithmetic operation"
echo "enter the values of a"
read a
echo "enter the values of b"
read b
sum=$(($a + $b))
echo "the sum of the two number is  "$sum 

sub=$(($a - $b))
echo " the subtraction of two number is " $sub

multi=$(($a * $b))
echo " the multiplication of two number is " $multi

div=$(($a / $b))
echo " the dividation of the two number is " $div




echo "Enter the name of the file or directory:"
read target

if [ -f "$target" ]; then
    echo "'$target' is a regular file."
elif [ -d "$target" ]; then
    echo "'$target' is a directory."
else
    echo "'$target' does not exist."
fi
