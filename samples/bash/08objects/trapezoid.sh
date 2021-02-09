ACTION=$1
ID=$2

case $ACTION in
    STORE)
        ID=$RANDOM
        RECTANGLE_ID=$2
        TRIANGLE_ID=$3
        cat > /tmp/$ID.trapezoid <<EOF
RECTANGLE_ID=$RECTANGLE_ID
TRIANGLE_ID=$TRIANGLE_ID
EOF
        echo $ID
        ;;
    AREA)
        source /tmp/$ID.trapezoid
        TRIANGLE_AREA=$(bash triangle.sh AREA $TRIANGLE_ID)
        RECTANGLE_AREA=$(bash rectangle.sh AREA $RECTANGLE_ID)
        bc <<EOF
$TRIANGLE_AREA + $RECTANGLE_AREA
EOF
        ;;
    PERIMETER)
        source /tmp/$ID.trapezoid
        TRIANGLE_PERIMETER=$(bash triangle.sh PERIMETER $TRIANGLE_ID)
        TRIANGLE_SIDE_A=$(bash triangle.sh GET $TRIANGLE_ID A)
        RECTANGLE_PERIMETER=$(bash rectangle.sh PERIMETER $RECTANGLE_ID)
        RECTANGLE_SIDE_A=$(bash rectangle.sh GET $RECTANGLE_ID A)
        bc <<EOF
$TRIANGLE_PERIMETER - $TRIANGLE_SIDE_A + $RECTANGLE_PERIMETER - $RECTANGLE_SIDE_A
EOF
        ;;
    FREE)
        rm /tmp/$ID.trapezoid
        ;;
esac