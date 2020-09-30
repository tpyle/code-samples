ACCURACY = 0.0000001

def findSqrt(number)
    x = number
    y = 1.0
    while x-y > ACCURACY
        x = (x + y) / 2.0
        y = number / x
    end
    return x
end

if ARGV.length < 1
    $stderr.puts "Error: Usage `ruby sqrt.rb <number> [<number> ...]`"
    exit(1)
end

for arg in ARGV
    if (false if Float(arg) rescue true)
        $stderr.puts "Error: Expected to receive a number. Received '%s'" % [arg]
        exit(2)
    end

    number = arg.to_f

    puts "%f => %f" % [number, findSqrt(number)]
end
