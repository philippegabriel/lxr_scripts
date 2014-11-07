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
#Either use pull.sh to pull directly from github repos
#./pull.sh ./repos.csv
#Or use CTXS build system to do it
./CTXSbuild-clone.sh ./targets.csv
#invoke lxr
cd /lxr/lxr-2.0.2
time ./genxref --url=http://lxr.xs.citrite.net --tree=XenServer --allversions --reindexall
cd $HERE
exit 0

