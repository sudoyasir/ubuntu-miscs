# This script will take two numbers as input and perform arithmetic operations on them.
#!/bin/bash
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

sum=$((num1 + num2))
echo "Sum: $sum"

difference=$((num1 - num2))
echo "Difference: $difference"

product=$((num1 * num2))
echo "Product: $product"

if [ $num2 -ne 0 ]
then
    division=$(awk "BEGIN {print $num1/$num2}")
    echo "Division: $division"
else
    echo "Cannot divide by zero."
fi
