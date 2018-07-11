# x = 0

# while x < 10
#   x = x + 1
#   puts "This is sentence number #{x}"
# end


# Bonus problem

x = rand(10)

puts 'Guess the random number between 0 and 9.'

y = gets.to_i

if y == x
  puts 'Correct!'
elsif y < x
  puts "Too low! It was #{x}."
else
  puts "Too high! It was #{x}."
end
