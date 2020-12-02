TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = asubExample
# asubExample.dbd will be created and installed
DBD += asubExample.dbd

# asubExample.dbd will be made up from these files:
asubExample_DBD += base.dbd
asubExample_DBD += aSubRecord.dbd
asubExample_DBD += functions.dbd

# Include dbd files from all support applications:
#asubExample_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#asubExample_LIBS += xxx

# asubExample_registerRecordDeviceDriver.cpp derives from asubExample.dbd
asubExample_SRCS += asubExample_registerRecordDeviceDriver.cpp
asubExample_SRCS += functions.c

# Build the main IOC entry point on workstation OSs.
asubExample_SRCS_DEFAULT += asubExampleMain.cpp
asubExample_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#asubExample_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
asubExample_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

