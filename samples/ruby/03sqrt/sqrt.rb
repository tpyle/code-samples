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

if ARGV.length != 1
    $stderr.puts "Error: Usage `ruby sqrt.rb <number>`"
    exit(1)
end


if (false if Float(ARGV[0]) rescue true)
    $stderr.puts "Error: Expected to receive a number. Received '%s'" % ARGV
    exit(2)
end

number = ARGV[0].to_f

puts findSqrt(number)
