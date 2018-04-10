
if [[ "$1" = "" || "$2" = "" ]]
then
    echo "Error! Needed arguments are missing!"
    exit
fi
if [ "$3" != "" ]
then
    echo "Error!! No. of arguments are greater than required!"
    exit
fi
ulist=$1
username=$2
if [ ! -f "$ulist" ]
then 
    echo "File not found!"
    exit
fi
result=$(grep $username $ulist)
if [ "$result" != "" ]
then
    echo "Username Exists!"
   exit
else
   echo "Username doesn't exist! Adding name to end of file"
   echo "$username" >> $ulist
   exit
fi
