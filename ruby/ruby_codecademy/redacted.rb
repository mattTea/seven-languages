puts "Text to search through: "
text = gets.chomp
puts "Words to redact: "
# redact = gets.chomp
redact_array = gets.chomp.split(" ")

puts redact_array

words = text.split(" ") # <- takes a string and returns an array, divided wherever it finds the (delimiter) argument
redacted_text = []

words.each do |word|
  if word.downcase != redact.downcase
    # print "#{word} "
    redacted_text.push("#{word} ")
  else
    # print "REDACTED "
    redacted_text.push("REDACTED ")
  end
end

redacted_string = redacted_text.join()
puts redacted_string


=begin
Mess around with your redactor to see what sorts of results you get. Think about the following:

1. What could you do to make sure your redactor redacts a word regardless of whether it's upper case or lower case? DONE
2. How could you make your program take multiple, separate words to REDACT? IN PRG!
3. How might you make a new redacted string and save it as a variable, rather than just printing it to the console? DONE

=end