function eprintf(s, ...)
    return io.stderr:write(s:format(...))
end

if #arg > 1 then
    eprintf("Error: Usage: lua wc.lua [<filename>]\n")
    os.exit(1)
end

file = nil
if #arg == 1 then
    file = io.open(arg[1], "r")
    io.input(file)
end

count = 0
for line in io.lines() do
    count = count + 1
end

if file then
    io.close(file)
end

print(count)
