def prime(n) # <- parameter in parentheses
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1 # <- for every number from 2 to 1 less than n, see if n/each number has a remainder of anything other than 0. If n divided by any other number produces 0 remainder, it can't be prime, because there would be another number it is divisible by
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2) # <- argument in parentheses
prime(9)
prime(11)
prime(51)
prime(97)

# ----------------

# Splat arguments
# Splat arguments are arguments preceded by a *
# It tells the program that the method can receive one or more arguments.

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor") # <- first argument is always the greeting parameter

# ----------------

# Return
# Use return when we want method to hand us (or another method!) back a value

def greeter(name)
  return "Hi #{name}"
end

def by_three?(n)
  if n % 3 == 0
    return true
  end
end

# ----------------

# Blocks - blocks are like nameless methods

def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}" # <- negative values count the characters from the end of the string (-1 denotes the last character)
end

capitalize("hello there")

# ----------------

# Sorting

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

my_sorted_array = my_array.sort!
puts my_sorted_array



=begin

The combined comparison operator
--------------------------------

Looks like this: <=>
It returns 0 if the first operand (item to be compared) equals the second,
returns 1 if the first operand is greater than the second,
and returns -1 if the first operand is less than the second.

=end

# Sort sorts in ascending order by default, but accepts a block as an optional argument that allows you to specify how two items should be compared.

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
puts books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
puts books.sort! { |firstBook, secondBook| secondBook <=> firstBook }