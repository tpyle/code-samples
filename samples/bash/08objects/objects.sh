RID=$(bash rectangle.sh STORE 5 2)
RA=$(bash rectangle.sh AREA $RID)
RP=$(bash rectangle.sh PERIMETER $RID)
bash rectangle.sh FREE $RID

echo "RECTANGLE: A: $RA P: $RP"

SID=$(bash square.sh STORE 5)
SA=$(bash square.sh AREA $SID)
SP=$(bash square.sh PERIMETER $SID)
bash square.sh FREE $SID

echo "SQUARE: A: $SA P: $SP"