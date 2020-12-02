#!../../bin/linux-x86_64/asubExample

#- You may have to change asubExample to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/asubExample.dbd",0,0)
asubExample_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/asubExample.db","user=bsobhani")

iocInit()

## Start any sequence programs
#seq sncasubExample,"user=bsobhani"

#This should print "It works!":
dbpf asubTest.PROC 1
