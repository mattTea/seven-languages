=begin
Print a statement to prompt the user for input,
then set that input to a variable using gets.chomp.
=end

print "What's your first name? "
first_name = gets.chomp.capitalize!

print "What's your last name? "
last_name = gets.chomp.capitalize!

print "Which city do you live in? "
city = gets.chomp.capitalize!

print "In which state or province is that? (2 letter abbreviation please!) "
state = gets.chomp.upcase!

puts "Your name is #{first_name} #{last_name}, and you live in #{city}, #{state}!"