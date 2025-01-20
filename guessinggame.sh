function guessing {

let num_files=$( ls | wc -l )

echo "Please guess the number of files in the current directory:"
read guess

if [[ $guess -eq $num_files ]]
then
	echo "Congratulations, that is correct!"
else
	while [[ $guess -ne $num_files ]]
	do
		if [[ $guess -lt $num_files ]]
		then
			echo "Your guess is too low, please guess again:"
			read guess2
			let guess=$guess2
		elif [[ $guess -gt $num_files ]]
		then
			echo "Your guess is too high, please guess again:"
			read guess2
			let guess=$guess2
		fi
	done
	echo "Congratulations, that is correct!"

fi
}

guessing
