#!/bin/bash

animes(){
    echo "Press 6 to exist"
    echo "Enter numbers to select ==>"
    select anime in "Bey Blade" "Dragon Ball" "Naruto" "JJK" "Invincible" 6
    do
        case "$anime" in
            "Bey Blade") echo "Tyson is main character";;
            "Dragon Ball") echo "Goku & Vegeta are gods";;
            "Naruto") echo "Naruto & Sasuke are main characters";;
            "JJK") echo "Gojo Satoru is a god";; # Corrected spelling
            "Invincible") echo "Mark Grayson is main character";;
            "") echo "Invalid input. Please select a number."; continue;; #Handles empty input
            6)  echo "Thanks for everything 🙏🏻"
                break;;
            *) echo "Other Gangsters";;
        esac
    done
}

foods(){
    echo "Press 5 to exit"
    select food in biryani friedrice samosa kozhukattai 5
    do
        case $food in
            biryani) echo "no one in all food items";;
            friedrice) echo "tasty fast food";;
            samosa) echo "super small snacks";;
            kozhukattai) echo "tasty snacks/food";;
            5)  echo "Thanks for choosing"
                break;;
            *) echo "other foods";;
        esac
    done
}

animes
foods