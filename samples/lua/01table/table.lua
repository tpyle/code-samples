printf = function(s,...)
            return io.write(s:format(...))
        end

for a=0,5 do
    if a == 0 then
        printf("%-3s", "")
    else
        printf("%-3d", a)
    end
    for b=1,5 do
        if a == 0 then
            printf("%-3d", b)
        else
            printf("%-3d", a*b)
        end
    end
    print()
end
