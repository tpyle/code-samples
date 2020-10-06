filename=$1

[[ "$#" -ne 0 ]] && exec 3<"$filename" || exec 3<&0

wc -l <&3
