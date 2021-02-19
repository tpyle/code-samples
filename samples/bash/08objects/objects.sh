RID=$(bash rectangle.sh STORE 5 2)
RA=$(bash rectangle.sh AREA $RID)
RP=$(bash rectangle.sh PERIMETER $RID)

echo "RECTANGLE: A: $RA P: $RP"

SID=$(bash square.sh STORE 5)
SA=$(bash square.sh AREA $SID)
SP=$(bash square.sh PERIMETER $SID)

echo "SQUARE: A: $SA P: $SP"

TID=$(bash triangle.sh STORE 5 1)
TA=$(bash triangle.sh AREA $TID)
TP=$(bash triangle.sh PERIMETER $TID)

echo "TRIANGLE: A: $TA P: $TP"

PID=$(bash trapezoid.sh STORE $RID $TID)
PA=$(bash trapezoid.sh AREA $PID)
PP=$(bash trapezoid.sh PERIMETER $PID)

echo "TRAPEZOID: A: $PA P: $PP"

OID=$(bash circle.sh STORE 4)
OA=$(bash circle.sh AREA $OID)
OP=$(bash circle.sh PERIMETER $OID)

echo "CIRCLE: A: $OA P: $OP"

bash rectangle.sh FREE $RID
bash square.sh FREE $SID
bash triangle.sh FREE $TID
bash trapezoid.sh FREE $PID