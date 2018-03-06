#!/bin/bash
 
#Result pdf to text file conversion
pdftotext -layout sem1results.pdf sem1results.txt
pdftotext -layout result_MDL.pdf result_MDLsem2.txt
#Separating CS results from sem1results.txt
grep -A 1 MDL16CS sem1results.txt > cssem1.txt
grep -A 1 MDL16CS result_MDLsem2.txt > cssem2.txt
tr -d "\n"<cssem1.txt>csSem1.txt
tr -d "\n"<cssem2.txt>csSem2.txt
sed -i 's/MDL16CS/\nMDL16CS/g' csSem1.txt
mv csSem1.txt cssem1.txt 
sed -i 's/MDL16CS/\nMDL16CS/g' csSem2.txt
mv csSem2.txt cssem2.txt
#Obtaining CS-B results from cssem1.txt
join -1 6 -2 1 -o 1.4 1.6 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 1.7 1.8 1.9 1.10 1.11 c4b.txt cssem1.txt  > grade.txt
join -1 6 -2 1 -o 1.4 1.6 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 2.10 1.7 1.8 1.9 1.10 1.11 c4b.txt cssem2.txt >grade2.txt

sed -i 's/(O),/ 10/g; s/(A+),/ 9/g; s/(A),/ 8.5/g; s/(B+),/ 8/g; s/(B),/ 7/g; s/(C),/ 6/g;
s/(P),/ 5/g; s/(F),/ 0/g' grade.txt
sed -i 's/(O)/ 10/g; s/(A+)/ 9/g; s/(A)/ 8.5/g; s/(B+)/ 8/g; s/(B)/ 7/g; s/(C)/ 6/g;
s/(P)/ 5/g; s/(F)/ 0/g' grade.txt
sed -i 's/--//g' grade.txt
sed -i 's/(O),/ 10/g; s/(A+),/ 9/g; s/(A),/ 8.5/g; s/(B+),/ 8/g; s/(B),/ 7/g; s/(C),/ 6/g;
s/(P),/ 5/g; s/(F),/ 0/g' grade2.txt
sed -i 's/(O)/ 10/g; s/(A+)/ 9/g; s/(A)/ 8.5/g; s/(B+)/ 8/g; s/(B)/ 7/g; s/(C)/ 6/g;
s/(P)/ 5/g; s/(F)/ 0/g' grade2.txt
sed -i 's/--//g' grade2.txt



