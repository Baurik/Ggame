# This program will ask the user to guess the number of files in the current directory

#counting the number of files in the current directory
quant=$(ls $PWD -1 | wc -l)

#prompt user to guessing a number of files
echo "Please guess the number of files in the current directory:" $PWD

#function that compare user answer with correct answer
function compare {
if  [[ $usernum -gt $quant ]]
then 
echo "Your guess is too high. Try again."
else
echo "Your guess is too low. Try again."
fi
read response
usernum=$response
}

#read first user input
read response
usernum=$response

#checking for case when user entered correct answer from first attempt
if [[ $usernum -ne  $quant ]] 
then
# starting loop
while [[ $usernum -ne  $quant ]]
do
compare
done
fi

#prompt for correct answer

echo "Yes! Correct! The number of files in directory is:" $quant
echo "You entered:" $usernum

# end of program code.
