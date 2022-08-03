echo -e "Guess number:\c"
read guess
if [ $guess = 6 ]
 then
 echo "Correct"
elif [ $guess != 6 ]
 then
 echo "False"
fi
