ACTION=$1
ID=$2


case $ACTION in
    STORE)
        ID=$RANDOM
        SIDE_A=$2
        SIDE_B=$3
        cat > /tmp/$ID.rectangle <<EOF
SIDE_A=$SIDE_A
SIDE_B=$SIDE_B
EOF
        echo $ID
        ;;
    AREA)
        source /tmp/$ID.rectangle
        bc <<EOF
$SIDE_A * $SIDE_B
EOF
        ;;
    PERIMETER)
        source /tmp/$ID.rectangle
        bc <<EOF
$SIDE_A * 2 + $SIDE_B * 2
EOF
        ;;
    FREE)
        rm /tmp/$ID.rectangle
        ;;
esac