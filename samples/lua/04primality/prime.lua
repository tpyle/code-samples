function printf(s, ...)
    return io.write(s:format(...))
end

function eprintf(s, ...)
    return io.stderr:write(s:format(...))
end

function is_prime (number)
    local limit = math.sqrt(number)
    for n = 2,limit do
        if number % n == 0 then
            return false
        end
    end
    return true
end

if #arg == 0 then
    eprintf("Error: Usage: lua prime.lua <number> [<number> ...]\n")
    os.exit(1)
end

for i=1,#arg do
    number = tonumber(arg[i])
    if number == nil then
        eprintf("Error: Expected to receive an integer. Received '%s'\n", arg[i])
        os.exit(2)
    end
    printf("%s => %s\n", arg[i], is_prime(number) and 'true' or 'false')
end
