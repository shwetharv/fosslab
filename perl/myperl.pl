#!/usr/bin/perl
print "Hello There!!\n";
#Arrays
@arr = (1,62,32,45);
print "Array Elements : @arr\n";
#Hashes
%hash = ('a',1,'b',2);
print "Printing Hash Elements  : $hash{'a'} $hash{'b'}\n";
#Scalar operations
$str = "shwetha"."varma";
print "Concatenated string : $str";
#math operations
$add = 3 + 2;
$sub = 10 - 2;
$mul = 11 * 2;
$div = 12 / 2;
print "\nVarious Math operations\n3 + 2 = $add\n10 - 2 = $sub\n11 * 2 = $mul\n12/2 = $div\n";
$string = "shwetha
r
varma";
print "Perl can have multiline strings\n$string \n";
#string comparison
$s="magic";
if($s eq "magic")
{print "Successful comparison! \n";} 
$q="wand";
if($s ne $q )
{print "$s and $q are not equal! \n";}
