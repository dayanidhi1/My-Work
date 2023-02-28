#bin!\bash
num1=()

echo "Please enter the array of numbers(space sepearted)"
read -a num1

sum=0

for i in "${num1[@]}"
do 
    sum=$((sum+i))

done

echo "Sum in the array: $sum"

