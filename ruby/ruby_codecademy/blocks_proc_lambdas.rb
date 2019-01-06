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
