 
function isPalidrome(){
k=$1
n=$1
rev_Num=0
while (( $n > 0 ))
do
rem=$(($n%10))
rev_Num=$(($rev_Num*10+$rem))
n=$(($n/10))
done
if [  $k == $rev_Num ]
then
echo "$k is palidrone number"
else
echo "$k is palidrone not a number"
fi
}
read -p "Enter number to be checked " x
read -p "Enter number to be checked " y
isPalidrome $x
isPalidrome $y
