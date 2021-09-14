#!/bin/sh
# ==============================================
# SCRIPT : DOWNLOAD AND INSTALL iptosat #
# =====================================================================================================================
# Command: wget https://raw.githubusercontent.com/tarekzoka/iptosat/main/installer.sh -O - | /bin/sh #
# 
opkg install --force-overwrite  https://github.com/tarekzoka/iptosatraw/main/enigma2-plugin-extensions-iptosat_1.8_all.ipk
wait
opkg -i /tmp/*.ipk
opkg -i /tmp/*.deb
wait
opkg install --force-overwrite /tmp/*.ipk
opkg install --force-overwrite /tmp/*.deb
sleep 2;
exit 0

=====================================================================================================================

########################################################################################################################
# Plugin	... Enter Manually
########################################################################################################################
PACKAGE_DIR='iptosat/main'
MY_IPK="enigma2-plugin-extensions-iptosat_1.8_all.ipk"
MY_DEB="enigma2-plugin-extensions-iptosat_1.8_all.deb"
opkg install --force-overwrite  https://github.com/tarekzoka/JediMakerXtream/raw/main/enigma2-plugin-extensions-iptosat_1.8_all.ipk
wait

opkg install --force-overwrite /tmp/*.ipk
sleep 2;
exit 0

