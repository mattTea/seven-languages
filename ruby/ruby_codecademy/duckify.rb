print "Enter your phrase to Daffy Duckify: " 
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  puts "Your duckified phrase... #{user_input.capitalize}"
else
	puts "No s found in phrase"
end