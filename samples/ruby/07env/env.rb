ENV.keys.each do |k|
    print "%s=%s\n" % [k, ENV[k]]
end