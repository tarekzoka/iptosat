#!/bin/sh
# ==============================================
# SCRIPT : DOWNLOAD AND INSTALL iptosat #
# =====================================================================================================================
# Command: wget https://raw.githubusercontent.com/tarekzoka/iptosat/main/installer.sh -O - | /bin/sh #


wget -O /tmp/iptosat_1.8_all.ipk "https://github.com/tarekzoka/-xstreamity/raw/main/eenigma2-plugin-extensions-iptosat_1.8_all.ipk"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
sleep 2;


