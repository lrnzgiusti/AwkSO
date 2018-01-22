#!/bin/awk
BEGIN{
    name = 0;
    i = 0;
}
{
    if($1 == "as-name:"){
	printf("%s",$2);
    }
    if($1 == "notify:" ){
	vec[i] = $2;
	i++;
    }
    if($1 == ""){
	printf(" %d",i);
	for(j = 0; j < i; j++){
	    printf(" %s",vec[j]);  
	}
	printf("\n");
	i = 0;
    }
}