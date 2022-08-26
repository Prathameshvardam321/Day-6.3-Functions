
echo "enter input"
echo "1.degC"
echo "2.degF"

function degctodegf(){
z=$(($x*(9/5)+32))
echo "$x degC : $z degF"
}
function degFtodegC(){
ans=$((($y-32)*5/9))
echo "$y degF : $ans degC"
}
read num
case "$num" in 
1)
read -p "Enter value between 0 to 100 C " x
if [[ $x -ge 0 && $x -le 100 ]]
         then
         degctodegf x
         else
         echo "Enter number within the range"
         fi
;;
2)
read -p "Enter value between 212 F" y
if [[ $y -ge 32 && $y -le 212 ]]
then
 degFtodegC y
 else
echo "Enter number within the range"
fi
;;
*)
echo "Invalid Input!!!"
;;
esac



