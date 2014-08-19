#!/bin/sh
#top level script
#invoke repos sync scripts
#invoke lxr indexing script
#
HERE=`pwd`
echo '######################################################################################'
date
echo '######################################################################################'
#sync repos
cd /lxr/lxr_scripts
./pull.sh < ./repos.csv
#invoke lxr
cd /lxr/lxr-2.0.2
./genxref --url=http://lxr.xs.citrite.net --tree=XenServer --allversions --reindexall
cd $HERE
exit 0

