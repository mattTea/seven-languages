puts 'Hello, world.'

# to read from file in irb (filepath just file name as in the seven-languages folder already I think)
# this doesn't run from file in the terminal as can't find file!

File.open("ruby-notes.txt", "r") do |f|
  f.each_line do |line|
    puts line
  end
end

# hash to array AND array to hash
# hash2 = {:a => 'Matt', :b => 'Katie', :c => 'bikes'}
# hash2[:b]
# => "Katie"

# hash2.to_a
# => [[:a, "Matt"], [:b, "Katie"], [:c, "bikes"]]

# arr = hash2.to_a
# => [[:a, "Matt"], [:b, "Katie"], [:c, "bikes"]]

# arr.to_h
# => {:a=>"Matt", :b=>"Katie", :c=>"bikes"}