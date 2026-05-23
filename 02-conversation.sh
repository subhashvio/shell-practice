#!/bin/bash

PERSON1=Trump
PERSON2=Biden

echo "$PERSON1: Hello, $PERSON2"
cho "$PERSON2: I'm doing well."
echo "$PERSON1: I'm doing great."
echo "$PERSON2: Sure, what do you want?"
echo "$PERSON1: I think the economy is improving."
echo "$PERSON2: I d




# $1 takes the first word you type, $2 takes the second
PERSON1="${1:-Trump}"  # Uses Trump as a default if empty
PERSON2="${2:-Biden}"  # Uses Biden as a default if empty

echo "$PERSON1: Hello, $PERSON2"
echo "$PERSON2: I'm doing well."
echo "$PERSON1: I'm doing great."
echo "What about you $PERSON2?"
