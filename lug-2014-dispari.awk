#!/bin/awk
#file di esecuzione ripe.db.aut-num.filtered.txt

BEGIN{
    num = 0;
    mnt = 0;
    exmnt = 0;
    i = 0;
}

{
    if($1 == "aut-num:") {
	aut = $2;
    }
    if($1 == "mnt-by:"){
	vec[i] = $2;
	i++;
    }
    if($1 == "\0"){
	printf("%s %d", aut, i);
	for(j = 0; j < i; j++){
	    printf(" %s", vec[j]);
	}
	i = 0;
	printf("\n");
    }
}