# while loop
puts "WHILE LOOP"
counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

puts "WHILE LOOP with +="
i = 0
while i < 5
  puts i
  i += 1
end

# until loop (like a backwards while loop)
puts "UNTIL LOOP"
counter = 1
until counter > 10
  puts counter
  counter = counter + 1
end

# for loop
puts "FOR LOOP"
for num in 1...10 # ... = do not include final number in range | .. = include final number in range
  puts num
end

puts "FOR LOOP 2"
for i in 1..5
  next if i % 2 == 0
  print i
end

# ------ ITERATORS ------

# { } are generally interchangeable with keywords 'do' and 'end'

puts "LOOP ITERATOR"
i = 20
loop do
  i -= 1
  print "#{i}" # <- not sure why we need the "#{ }" in this statement - works without it as well
  break if i <= 0
end

puts "EACH ITERATOR"
# the .each method can apply an expression to each element of an object, one at a time.
array = [1,2,3,4,5]

puts "EACH ITERATOR 2"
array.each do |x|
  x += 10
  print "#{x}"
end

puts "EACH ITERATOR 3"
odds = [1,3,5,7,9]

odds.each do |odd_num|
  odd_num *= 2
  print odd_num # <- or print "#{odd_num}"
end

puts "TIMES ITERATOR"
12.times { puts "Hiya!" }