guessing_game() {
    rand_number=$((RANDOM % $1))
    for i in {1..3}; do
        echo "guess the number" #promt the user to enter a value
        read guess_number       #read input from the user
        if [ $rand_number -eq $guess_number ]; then
            echo "Congratulations , You Won!"
            return
        elif [$rand_number -gt $guesss_number ]; then
            echo "You miss! The random number is lesser than $guess_number"
        else
            echo "you missed! The random number is lesser than $guess_number "
        fi

        echo "Please try again!"
    done
    echo "You lose, the number was $rand_number"
}