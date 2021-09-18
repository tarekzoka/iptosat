#!/bin/sh
#
# SCRIPT : DOWNLOAD AND INSTALL XCPLUGIN
#
###########################################
#command: wget https://raw.githubusercontent.com/tarekzoka/iptosat/main/installer.sh -O - | /bin/sh
 #
MY_EM="*********************************************************************************"
wget -O /var/volatile/tmp/XCplugin.tar.gz "https://raw.githubusercontent.com/tarekzoka/iptosat/main/XCplugin.tar.gz"
wait
echo $MY_EM
######      INSTALL PLUGIN Xcplugin ###
tar xzvpf /tmp/*.tar.gz -C /
wait
echo $MY_EM
#######   REMOVE PACKAGE FROM TMP ###
rm -r /var/volatile/tmp/XCplugin.tar.gz 
echo "========================================================================" 	
echo ". WELCOME TO PLUGIN XCPLUGIN "
echo $MY_EM
	echo " PLUGIN INSTALLED SUCCESSFULLY "
echo " UPLOADED BY EMIL_NABIL " 
echo "======================================================"
echo "       YOUR DEVICE WELL RESTART Now " 
echo "****************************************"
wait 3;
init 4
init 3
exit 0


