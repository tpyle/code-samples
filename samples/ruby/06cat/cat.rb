if ARGV.length > 1
    $stderr.puts "Error: Usage `ruby cat.rb [<file>]`"
    exit(1)
end

file = ARGV[0] ? File.open(ARGV[0]) : ARGF
file.each { |line| puts line }
