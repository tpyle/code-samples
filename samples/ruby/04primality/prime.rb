def isPrime(number)
    limit = Math.sqrt(number)
    for c in 2..limit
        if number.modulo(c) == 0 then
            return false
        end
    end
    return true
end

if ARGV.length < 1
    $stderr.puts "Error: Usage `ruby prime.rb <number> [<number> ...]`"
    exit(1)
end

for arg in ARGV
    if (false if Integer(arg) rescue true)
        $stderr.puts "Error: Expected to receive an integer. Received '%s'" % [arg]
        exit(2)
    end

    number = arg.to_i

    puts "%d => %s" % [number, isPrime(number).to_s]
end
