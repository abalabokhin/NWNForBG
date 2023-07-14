#!/bin/bash

sed -i "s/\(DisplayString[^(]*([^,]*,\)\([0-9]\{5,\}\)/\1@\2/g" *
sed -i "s/\(DisplayString[^(]*([^,]*,\)\([0-9]\{1,4\}\)/\1#\2/g" *

sed -i "s/\(JournalEntry(\)\([0-9]\{5,\}\)/\1@\2/g" *
sed -i "s/\(JournalEntry(\)\([0-9]\{1,4\}\)/\1#\2/g" *

sed -i "s/\(SetName(\)\([0-9]\{5,\}\)/\1@\2/g" *
sed -i "s/\(SetName(\)\([0-9]\{1,4\}\)/\1#\2/g" *

sed -i "s/@\(7[0-4][0-9]\{3\}[^0-9]\)/#\1/g" *
sed -i "s/@\([0-7][0-9]\{4\}[^0-9]\)/#\1/g" *
#SetQuestDone
#SetToken
#SetPlayerSound
#RemoveMapNote

#sed -i "s/\(DisplayString[^(]*([^,]*,\)@\([6-9][0-9]\{1,3\}\)/\1#\2/g" *



