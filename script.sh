#!/bin/bash
OUTPUT=$(git show HEAD --name-only | grep Indigo/)
# if [[ "$OUTPUT" == "Bookings" ]]; then 
#          echo "Booking files have changed"
# fi
if [ -n "$(git show HEAD --name-only | grep Bookings/)" ]; then 
    echo "Booking files have changed"
elif [ -n "$(git show HEAD --name-only | grep Fares/)" ]; then 
    echo "Fares files have changed" 
fi