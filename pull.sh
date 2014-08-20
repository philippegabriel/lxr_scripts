HERE=`pwd`
while read LINE 
do 
#skip comments
	echo $LINE | grep '^#' && continue
#process line 
	repo=`echo $LINE | cut -d, -f1`
	dir=`echo $LINE | cut -d, -f2`
	branch=`echo $LINE | cut -d, -f3`
#echo "$repo;$dir;$branch"
	cd $dir
	git checkout $branch
	git pull 
	cd $HERE
done < $1
exit 0

