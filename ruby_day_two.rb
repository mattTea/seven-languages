puts 'Hello, Ruby day two.'

puts '1. To read from file in irb'

File.open("./ruby-notes.txt", "r") do |f|
  f.each_line do |line|
    puts line
  end
end

# ---------

# puts '2. Hash to array AND array to hash...'

# hash2 = {:a => 'Matt', :b => 'Katie', :c => 'bikes'}
# hash2[:b]
# => "Katie"

# hash2.to_a
# => [[:a, "Matt"], [:b, "Katie"], [:c, "bikes"]]

# arr = hash2.to_a
# => [[:a, "Matt"], [:b, "Katie"], [:c, "bikes"]]

# arr.to_h
# => {:a=>"Matt", :b=>"Katie", :c=>"bikes"}

# ---------

puts '3. Iterate through a hash...'
# each { |item| block } → ary

iterate_hash = {:a => 'Matt', :b => 'Katie', :c => 'bikes'}

iterate_hash.each do |key, value|
  puts iterate_hash[key] # <- access using the hash key
  # puts value # <- access using the hash value
end

# ---------

puts '4. Print array four numbers at a time using only each...'

array_sixteen = (1..16).to_a
i = 0
array_sixteen.each do |item|
  p array_sixteen[i, 4] if (i % 4 == 0)
  i += 1
end

puts '4b. Print array four numbers at a time using each_slice...'

array_slice_sixteen = (17..32).to_a

array_slice_sixteen.each_slice(4) {|x| p x}

# ---------

puts '5. Grep to read specific lines in a file'

File.open("./ruby-notes.txt", "r") do |f|
  target_phrase = "ruby"
  f.each_line do |line|
    puts ("Line #{f.lineno}: #{line}") if (line =~ /#{target_phrase}/i)
    # puts line if (line =~ /ruby/i)
  end
end

