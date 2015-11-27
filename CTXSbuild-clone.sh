HERE=`pwd`
while read LINE 
do  
#skip comments
	echo $LINE | grep '^#' && continue
#process line 
	dir=`echo $LINE | cut -d, -f1`
	component=`echo $LINE | cut -d, -f2`
	cd $dir/build.hg
	hg pull
	hg update
	make manifest-latest
	make $component-clone
	cd $HERE
done < $1
exit 0

