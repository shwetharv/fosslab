#string.txt contains This is a test of the test script
echo -n "Original String: "
cat string.txt
sed 's/test/trial/' string.txt > replaced.txt
echo -n "Replaced string: "
cat replaced.txt
