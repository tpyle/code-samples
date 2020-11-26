if ARGV.length > 1
    $stderr.puts "Error: Usage `ruby wc.rb [<file>]`"
    exit(1)
end

length = 0
file = ARGV[0] ? File.open(ARGV[0]) : ARGF
file.each { |line| length+=1 }
puts length
