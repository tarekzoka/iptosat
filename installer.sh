#!/bin/bash
# 
--------------------------------------------------------------------------------------
# ###########################################
# SCRIPT : DOWNLOAD AND INSTALL IPtoSAT
# ###########################################
#
# Command: wget wget https://raw.githubusercontent.com/tarekzoka/iptosat/main/installer.sh -qO - | /bin/sh
#
# ###################
echo ' welcome to install iptosat '
=======================
============================
=================================
# Configure where we can find things here #
TMPDIR='/tmp'
VERSION='1.8'
PACKAGE='enigma2-plugin-extensions-iptosat'
MY_URL='https://raw.githubusercontent.com/tarekzoka/iptosat/main/'
--------------------------------------------------------------------------------------

####################
#  Image Checking  #
if which opkg > /dev/null 2>&1; then
    STATUS='/var/lib/opkg/status'
@@ -32,13 +38,12 @@ fi

##################################
# Remove previous files (if any) #
rm -rf $TMPDIR/${PACKAGE}*
rm -rf $TMPDIR/"${PACKAGE:?}"* > /dev/null 2>&1

######################
#  Remove Old Plugin #
if grep -qs "Package: $PACKAGE" $STATUS ; then
    echo ""
    echo "Remove old version..."
    echo "   >>>>   Remove old version   <<<<"
    if [ $OSTYPE = "Opensource" ]; then
        $OPKGREMOV $PACKAGE
        echo ""
@@ -49,7 +54,7 @@ if grep -qs "Package: $PACKAGE" $STATUS ; then
        sleep 2; clear
    fi
else
    echo "No older version was found on the device... "
    echo "   >>>>   No Older Version Was Found   <<<<"
    sleep 1
    echo ""; clear
fi
@@ -127,28 +132,30 @@ fi
###################
#  Install Plugin #
if [ $OSTYPE = "Opensource" ]; then
    echo "Downloading And Insallling IPtoSAT plugin Please Wait ......"
    echo "Insallling IPtoSAT plugin Please Wait ......"
    wget $MY_URL/${PACKAGE}_${VERSION}_all.ipk -qP $TMPDIR
    $OPKGINSTAL $TMPDIR/${PACKAGE}_${VERSION}_all.ipk
else
    echo "Downloading And Insallling IPtoSAT plugin Please Wait ......"
    echo "Insallling IPtoSAT plugin Please Wait ......"
    wget $MY_URL/${PACKAGE}_${VERSION}.deb -qP $TMPDIR
    $DPKINSTALL $TMPDIR/${PACKAGE}_${VERSION}.deb; $OPKGINSTAL -f -y
fi

##################################
# Remove previous files (if any) #
rm -rf $TMPDIR/${PACKAGE}*
rm -rf $TMPDIR/"${PACKAGE:?}"* > /dev/null 2>&1

sleep 1; clear
echo ""
echo "***********************************************************************"
echo "**                                                                    *"
echo "**  Welcome IPtoSAT    : $VERSION                             *"
echo "** Uploaded by: tarekzoka                      *"
echo "**                       Develop by : ZAKARIYA KHA                    *"
echo "===================================================================================================================="
echo "**                                                                    *"
echo "welcome to iptosat"
echo "**            IPtoSAT $VERSION *"  
echo "=================
=============================
=================================="                 
echo "**    Uploaded by: tarekzoka    *"               
echo "** "                                                               
echo ".  WELCOME TO PLUGIN IPTOSAT "
echo ""

exit 0