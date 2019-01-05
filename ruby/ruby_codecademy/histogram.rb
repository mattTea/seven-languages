puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0) # <- default value (0) - when trying to access a non-existent key, you will get the default value returned

words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by { |word_key, count| count }
frequencies.reverse!

frequencies.each do |word_key, count|
  puts "#{word_key} #{count.to_s}"
end