
README.md: guessinggame.sh
	echo "#Ggame" > README.md
	echo "" >> README.md
	echo "##Ggame is a simple program that asking user to guess the number of files in the current directory" >> README.md
	echo "" >> README.md
	echo " - The make was run at " >> README.md
	date -R >> README.md
	echo " - The number of lines of code contained in **guessinggame.sh** is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
		


