while read LINE 
do  
	repo=`echo $LINE | cut -d, -f1`
	dir=`echo $LINE | cut -d, -f2`
	branch=`echo $LINE | cut -d, -f3`
#echo "$repo;$dir;$branch"
	pushd $dir
	git checkout $branch
	git pull 
	popd
done
exit 0

