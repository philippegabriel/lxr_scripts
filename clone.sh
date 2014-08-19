while read LINE 
do  
	repo=`echo $LINE | cut -d, -f1`
	dir=`echo $LINE | cut -d, -f2`
	branch=`echo $LINE | cut -d, -f3`
#echo "$repo;$dir;$branch"
	git clone $repo $dir
	pushd $dir
	git checkout $branch
	popd
done
exit 0

