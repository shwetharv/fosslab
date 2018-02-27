#!/bin/bash
 
#Result pdf to text file conversion
$(pdftotext -layout result_MDL.pdf result_MDL.txt)

#Separating CS results from result_MDL.txt
$(grep MDL16CS result_MDL.txt > cs.txt)

#Obtaining CS-B results from cs.txt
$(join -1 6 -2 1 c4b.txt cs.txt > sorted.txt)
