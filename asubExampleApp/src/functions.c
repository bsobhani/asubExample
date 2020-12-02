#include <registryFunction.h>
#include <epicsExport.h>
#include <aSubRecord.h>
#include <stdio.h>
#include <stdlib.h>

static long test_function(aSubRecord *prec){
	printf("It works!\n");
	return 0;
}

epicsRegisterFunction(test_function);
