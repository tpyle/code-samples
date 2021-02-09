ACTION=$1
ID=$2

case $ACTION in
    STORE)
        ID=$RANDOM
        SIDE_A=$2
        SIDE_B=$3
        SIDE_C=$(echo "scale=5; sqrt($SIDE_A*$SIDE_A + $SIDE_B * $SIDE_B)" | bc)
        cat > /tmp/$ID.triangle <<EOF
SIDE_A=$SIDE_A
SIDE_B=$SIDE_B
SIDE_C=$SIDE_C
EOF
        echo $ID
        ;;
    AREA)
        source /tmp/$ID.triangle
        bc <<EOF
scale=5; $SIDE_A * $SIDE_B / 2
EOF
        ;;
    PERIMETER)
        source /tmp/$ID.triangle
        bc <<EOF
scale=5; $SIDE_A + $SIDE_B + $SIDE_C
EOF
        ;;
    FREE)
        rm /tmp/$ID.triangle
        ;;
esac