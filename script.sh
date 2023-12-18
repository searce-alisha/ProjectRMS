#!/bin/bash
OUTPUT=$(git show HEAD --name-only | grep Indigo/)
# if [[ "$OUTPUT" == "Bookings" ]]; then 
#          echo "Booking files have changed"
# fi
if [ -n "$OUTPUT" ]; then 
  echo "Booking files have changed"
fi
