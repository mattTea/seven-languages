puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ") # <- takes a string and returns an array, divided wherever it finds the (delimiter) argument

words.each do |word|
  if word != redact
    print "#{word} "
  else
    print "REDACTED "
  end
end

=begin

Mess around with your redactor to see what sorts of results you get. Think about the following:

1. What could you do to make sure your redactor redacts a word regardless of whether it's upper case or lower case?
2. How could you make your program take multiple, separate words to REDACT?
3. How might you make a new redacted string and save it as a variable, rather than just printing it to the console?

=end