ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

# ----

puts "Enter your age: "
age = gets.chomp
puts "Fancy a beer?" if age.to_i >= 18
puts "Fancy a juice?" if age.to_i < 18

# ----

age = 21
puts age >= 18 ? "Fancy a beer?" : "Fancy a juice?"

# --- Simplified case statements ---

case language
  when "JS" then puts "Websites!"
  when "Python" then puts "Science!"
  when "Ruby" then puts "Web apps!"
  else puts "I don't know!"
end

# --- Conditional assignment ---

=begin
1. favorite_book is set to nil (nothing). When try to 'puts' you get exactly that: nothing!
2. Variable conditionally set to "Cat's Cradle." As value was nothing before, Ruby sets it, so "Cat's Cradle" is printed.
3. Try conditional assignment again to "Why's (Poignant) Guide to Ruby." But variable already has value of "Cat's Cradle" so it stays.
4. Use regular assignment to tell Ruby to set favorite_book to "Why's (Poignant) Guide to Ruby," which it does.
=end

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

# --- upto and downto ---

"L".upto("P") { |letter| puts letter }

# --- .respond_to? ---
# .respond_to? takes a symbol and returns true if an object can receive that method and false otherwise.

puts [1, 2, 3].respond_to?(:push) # => true
puts [1, 2, 3].respond_to?(:to_sym) # => false

# --- concatenation operator << ---

[1, 2, 3].push(4) # can become...
[1, 2, 3] << 4 # ==> [1, 2, 3, 4]

# also on strings...
"Yukihiro " << "Matsumoto" # ==> "Yukihiro Matsumoto"