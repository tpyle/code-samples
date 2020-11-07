cont = false
for i=#arg,1,-1 do
    if cont then
        io.write(" ")
    else
        cont = true
    end
    io.write(arg[i])
end
if cont then
    print()
end
