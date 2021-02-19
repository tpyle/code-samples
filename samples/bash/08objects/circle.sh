ACTION=$1
ID=$2


case $ACTION in
    STORE)
        ID=$RANDOM
        RADIUS=$2
        cat > /tmp/$ID.circle <<EOF
RADIUS=$RADIUS
EOF
        echo $ID
        ;;
    AREA)
        source /tmp/$ID.circle
        bc -l <<EOF
4*a(1) * $RADIUS * $RADIUS
EOF
        ;;
    PERIMETER)
        source /tmp/$ID.circle
        bc -l <<EOF
2 * 4*a(1) * $RADIUS
EOF
        ;;
    FREE)
        rm /tmp/$ID.circle
        ;;
    GET)
        SIDE=$3
        source /tmp/$ID.circle
        case $SIDE in
            RADIUS)
                echo $RADIUS
                ;;
        esac
esac