#input to file.txt
grep -n '^' file.txt > num.txt
sed -n 1~2p num.txt > odd.txt
cat odd.txt
