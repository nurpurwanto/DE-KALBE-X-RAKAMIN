name_of_directory='data1'
path="kalbe/hdfs/data"
cd $path
case $name_of_directory in
	$path)
		echo "There is $name_of_directory Directory Exists!"
		;;
	*)
		echo "$name_of_directory Directory Not Exists!"
		mkdir "$name_of_directory"
    		echo "Created $name_of_directory directory."
		;;
esac
		
