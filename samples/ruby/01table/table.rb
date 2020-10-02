LIMIT = 5
for a in 0..LIMIT
    if a == 0 then
        print "%-3s" % [""]
    else
        print "%-3d" % [a]
    end
    for b in 1..LIMIT
        if a == 0 then
            print "%-3d" % [b]
        else
            print "%-3d" % [a*b]
        end
    end
    puts
end
