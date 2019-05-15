# This shell script replaces 'whitespaces' to 'underscores' in a list of items present in your working directory.
# IMPORTANT: Make sure you have only folders and this script in working directory and no other files, else this script will rename those files as well
# If there is a folder with the new name, then this script doesn't delete the item to be renamed but puts it inside your preexisting folder
# Date: September 5, 2018
# Deepak@INMAS

echo "Please note: Number of spaced items and number of folders to be reanamed should be equal and there should be no other file present with whitespace in its filename"

counter=0
n_spaced_items=0

for f in *\ *
do
	n_spaced_items=`expr $n_spaced_items + 1`
done
echo "$n_spaced_items spaced item/s present"


if [ "$input" != "Y" ] && [ "$input" != "y" ]; then
	for f in *\ *
	do
		mv "$f" "${f// /_}" 2>/dev/null #Replace whitespace with underscore
		counter=`expr $counter + 1`
	done
	echo $counter "item/s were renamed out of $n_spaced_items expected item/s"
fi
