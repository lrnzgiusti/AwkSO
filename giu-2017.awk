#!/bin/awk
# file d' esecuzione: voti.txt
{ 
    s = 0;
    min = 99;
    max = -1;
    for(i = 2; i <= NF; i++)
    {
	if($i > max) max = $i;
	if($i < min) min = $i;
	s += $i
    }
    print $1;
    print s;
    s = s/(NF-1);
    print s;
    if(s > 23)
    {
	printf("\n");
	print "max:" max;
	print "min:" min;
    }
}
