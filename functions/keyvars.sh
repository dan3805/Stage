#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Author(s):  Admin9705
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
keyvars () {
############## Create / Update Key Variable upon Start Execution

# Pull IP Address & Store
hostname -I | awk '{print $1}' > /pg/var/server.ip

# Creates Default Path /pg for the processing HD
variable /pg/var/hd.path "/pg"

# Store Linux Version (Recommend to make this more exact future wise)
ospgversion=$(cat /etc/*-release | grep Debian | grep 9)
if [ "$ospgversion" != "" ]; then echo "debian"> /pg/var/os.version;
else echo "ubuntu" > /pg/var/os.version; fi
}
