function prime(){

count=0
n=$1
for ((i=2;i<$n;i++))
do
if [ $(($n%$i)) == 0 ]
then
count=1
break

fi
done
if [ $count == 0 ]
then
 echo "$n is prime number"
else
echo "$n is not prime number"

fi
}
function palindrome_Converter(){
a=$1
k=$1
rev_Value=0
while [[ $a > 0 ]]
do
rem=$((a%10))
rev_Value=$((rev_Value*10 + rem ))
a=$(($a/10))

done
echo "palidrome number of $k is : $rev_Value"
}
read -p "Enter the number : " x
prime $x
palindrome_Converter $x
