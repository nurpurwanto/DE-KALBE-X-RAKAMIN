name_of_directory='data1'
filename_excel='daily_market_price.xlsx'
source_dir='local/data/market'
cd $source_dir
case $name_of_directory in
	$source_dir)
		echo "There is $name_of_directory Directory Exists!"
		
		;;
	*)
		echo "$name_of_directory Directory Not Exists!"
		mkdir "$name_of_directory"
    		echo "Created $name_of_directory directory."
		;;
esac
cp $filename_excel $name_of_directory
		


