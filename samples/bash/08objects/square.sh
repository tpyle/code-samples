ACTION=$1

case $ACTION in
    STORE)
        SIDE=$2
        bash rectangle.sh $ACTION $SIDE $SIDE
        ;;
    *)
        bash rectangle.sh $@
        ;;
esac