clear
sum=0
i="y"

echo " Enter one no."
read n1
echo "Enter second no."
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulus"
echo "Enter your choice"
read ch
case $ch in
    1)sum=`expr $n1 + $n2`
     echo "Sum is = "$sum;;
        2)sum=`expr $n1 - $n2`
     echo "Difference is = "$sum;;
    3)sum=`expr $n1 \* $n2`
     echo "Product is = "$sum;;
    4)sum=`expr $n1 / $n2`
     echo "Quotient is = "$sum;;
    5)sum=`expr $n1 % $n2`
     echo "Remainder is = "$sum;;
    *)echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done
