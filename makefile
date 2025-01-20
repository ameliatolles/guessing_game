README.md: guessinggame.sh
	echo "#The title of this project is **Guessing Game**" > README.md
		
	echo "-Date and time at which make was run:" >> README.md
	date >> README.md
	
	echo "-Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "^[0-9]*" >> README.md

clean:
	rm README.md

