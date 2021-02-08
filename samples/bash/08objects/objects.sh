RID=$(bash rectangle.sh STORE 5 2)
RA=$(bash rectangle.sh AREA $RID)
RP=$(bash rectangle.sh PERIMETER $RID)
bash rectangle.sh FREE $RID

echo "RECTANGLE: A: $RA P: $RP"