#!/bin/bash
echo args: $#
echo inputarg: $1

if [[ -n $1 ]]; then
	#statements
	origin="$1"
else
	echo Enter origin clone git:
	read origin
fi

# -n string will return true if string is not empty/null.
if [[ -n $origin  ]]; then
	#statements
	echo $ git clone  $origin
	git clone  $origin

# echo "Pause Enter to cont."
# read pause

# http://stackoverflow.com/questions/1199613/extract-filename-and-path-from-url-in-bash-script
	gitfolder=${origin##*/}
	gitfolder=${gitfolder%%.git}
	# echo $gitfolder
	if [[ -n $gitfolder ]]; then
		#statements
		echo $ cd $gitfolder
		cd $gitfolder
# echo "Pause Enter to cont."
# read pause

		if [[ -n $2 ]]; then
			#statements
			Fork=$2
		else
			echo Enter Fork owner git:
			read Fork
		fi

		if [[ -n $Fork ]]; then
			#statements
			echo $ git remote add owner $Fork
			git remote add owner $Fork
# echo "Pause Enter to cont."
# read pause
			echo $ git fetch owner
			git fetch owner
# echo "Pause Enter to cont."
# read pause
			echo $ git remote show owner
			git remote show owner
# echo "Pause Enter to cont."
# read pause


			echo $ git pull owner master
			git pull owner master
# echo "Pause Enter to cont."
# read pause
			echo $ git push origin 
			git push origin
# echo "Pause Enter to cont."
# read pause

		else
			echo No need to fork!!!
		fi
	fi


	echo "Done!!"

else
	echo Tks using!!!
fi

