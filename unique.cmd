# ###############################
# Specific to camera		#
# Date:   2018-08-22		#
# Author: K. Gofron		#	
# ###############################

# ######################################################################################
# NELEMENTS = 3*(X x Y)=1360x1024x3=4177920, which is the number of pixels in RGB images from the GC-1380C color camera. 
#
# CAMERA		  (X x Y)     =	NELMT;	 3*NELMT;     MAX_ARRAY_16b;  MAX_ARRAY_24b
#Prosilica GC1290/GT1290: 1280 * 960  = 1228800; 3686400      2457600 Bytes   3686400
#Prosilica Mako G-125B:   1292 * 964  = 1245488; 3736464      2490976 Bytes   3736464
#Prosilica GX1920:        1936 * 1456 = 2818816; 8456448      5637632 Bytes   8456448
#Prosilica GC-1380:       1360 * 1024 = 1392640; 4177920      2785280 Bytes   4177920
# #######################################################################################

#10.10.1.85: 00-0f-31-02-18-04	02-2623A-07000  GT3300C      137220	OnAxis  xf10idd-cam5

# Set this to the top untarred AD Binary release
epicsEnvSet("SUPPORT_DIR", "/epics/Deb8")

# Maintainer
epicsEnvSet("ENGINEER",                 "K. Gofron X5283")

# IOC Information
epicsEnvSet("LOCATION",                 "10IDD")
epicsEnvSet("PORT",                     "LAMBDA1")
epicsEnvSet("IOC",                      "iocADUVC")

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST",  "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST",       "10.10.0.255")
epicsEnvSet("EPICS_CA_MAX_ARRAY_BYTES", "6000000")

# Identify which connection camera IOC uses
epicsEnvSet("CAM-ID",                   "25344")
#epicsEnvSet("CAM-IP",                   "10.10.1.91")
epicsEnvSet("CONFIGURATION_PATH",	"/opt/xsp/config")
#epicsEnvSet("UID-NUM",                 "137220")

# PV and IOC Name configs
epicsEnvSet("PREFIX",                   "XF:10IDC-BI{Lambda-Cam:1}")
epicsEnvSet("CTPREFIX",                 "XF:10IDC-BI{Lambda-Cam:1}")
epicsEnvSet("HOSTNAME",                 "xf10idd-ioc3")
epicsEnvSet("IOCNAME",                  "cam-lambda")

# Imag and data size
epicsEnvSet("QSIZE",                    "30")
epicsEnvSet("NCHANS",                   "2048")
epicsEnvSet("HIST_SIZE",                "4096")
epicsEnvSet("XSIZE",                    "256")
epicsEnvSet("YSIZE",                    "256")
epicsEnvSet("NELMT",                    "65536")
epicsEnvSet("NDTYPE",                   "Int16")  #'Int8' (8bit B/W, Color) | 'Int16' (16bit B/W)
epicsEnvSet("NDFTVL",                   "SHORT") #'UCHAR' (8bit B/W, Color) | 'SHORT' (16bit B/W)
epicsEnvSet("CBUFFS",                   "500")

# The framerate at which the stream will operate (used by UVC camera)
epicsEnvSet("FRAMERATE",     	    	"30");
