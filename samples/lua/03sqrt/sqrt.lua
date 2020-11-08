function printf(s, ...)
    return io.write(s:format(...))
end

function eprintf(s, ...)
    return io.stderr:write(s:format(...))
end

function find_sqrt (number)
    local x = number + .0
    local y = 1.0
    local e = 0.00000001
    while (x - y > e) do
        x = (x+y)/2
        y = number/x
    end
    return x
end

if #arg == 0 then
    eprintf("Error: Usage: lua sqrt.lua <number> [<number> ...]\n")
    os.exit(1)
end

for i=1,#arg do
    number = tonumber(arg[i])
    if number == nil then
        eprintf("Error: Expected to receive a number. Received '%s'\n", arg[i])
        os.exit(2)
    end
    printf("%s => %f\n", arg[i], find_sqrt(number))
end
