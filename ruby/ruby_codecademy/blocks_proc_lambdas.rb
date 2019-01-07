# .collect works a bit like .each...
my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]


# --- yield ---
=begin
Some methods accept a block and others don't.
Methods that accept blocks have a way of transferring control from the calling method to the block and back again.
We can build this into the methods we define by using the 'yield' keyword.
=end

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

# another example
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }


# --- Blocks aren't Objects! ---
# So can't save a block to a variable - for that we need 'Procs'

cube = Proc.new { |x| x ** 3 }

[1, 2, 3].collect!(&cube) # ==> [1, 8, 27]
[4, 5, 6].map!(&cube) # ==> [64, 125, 216]
# The & is used to convert the cube proc into a block

# alternative way to 'call' a proc...
hi = Proc.new { puts "Hello!" }
hi.call # => "Hello!"


# Can also convert symbols to procs using &...
strings = ["1", "2", "3"]
nums = strings.map(&:to_i) # ==> [1, 2, 3]


# --- Lambdas ---
# Very similar to procs

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })
# => I'm the method!
# => I'm the lambda!

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |string| string.to_sym }

symbols = strings.collect(&symbolize)
print symbols

# Procs VS Lambdas - 2 differences
=begin
1.  lambda checks the number of arguments passed to it, a proc does not.
This means that a lambda will throw an error if you pass it the wrong number of arguments,
whereas a proc will ignore unexpected arguments and assign nil to any that are missing.
2. When a lambda returns, it passes control back to the calling method;
when a proc returns, it does so immediately, without going back to the calling method.
e.g. below...
=end

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda
# => Batman will win!
# => Iron Man will win!


my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |item| item.is_a? Symbol }

symbols = my_array.select(&symbol_filter)

puts symbols
# => [:kettles, :mittens, :packages]

# Summary
=begin
A block is just a bit of code between do..end or {}. It's not an object on its own, but it can be passed to methods like .each or .select.
A proc is a saved block we can use over and over.
A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.
=end

# Examples...
# 1
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |element| element.is_a? Integer }

puts ints

# 2
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new { |num| num < 100 }

youngsters = ages.select(&under_100)

puts youngsters

# 3
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!

first_half = lambda { |key, value| value < "M" }

a_to_m = crew.select(&first_half)
puts a_to_m