echo -n "Enter 1st number:"
read first
echo -n "Enter 2nd number:"
read second
echo -n "Enter 3rd number:"
read third
if [ $first -gt $second ] ; then
if [ $first -gt $third ] ; then
echo "$first is largest"
else
echo "$third is largest"
fi
else
if [ $second -gt $third ] ; then
echo "$second is largest"
else
echo "$third is largest"
fi
fi
