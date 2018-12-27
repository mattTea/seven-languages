x = 4

puts 'This appears to be false.' unless x == 4

puts 'This appears to be true.' if x == 4

if x == 4
  puts 'This appears to be true.'
end

unless x == 4
  puts 'This appears to be false, silly.'
else
  puts 'This appears to be bang on the money!'
end


puts 'This appears to be true' if not true
puts 'This appears to be true' if true

puts 'This appears to be true' if !true
puts 'This appears to be true' if !false

# -------------------

x = 0
x = x + 1 while x < 10
x
# 10

x = x - 1 until x == 1
x
# 1

while x < 10
  x = x + 1
  puts x
end

puts 'this appears to be true.' if 1
# this appears to be true.
# => nil
puts 'this appears to be true.' if 0 
# this appears to be true.
# => nil
# (0 is truthy!)
puts 'this appears to be true.' if true
# this appears to be true.
# => nil
puts 'this appears to be true.' if false
# => nil
puts 'this appears to be true.' if nil
# => nil
puts 'this appears to be true.' if 'random string'
# warning: string literal in condition
# this appears to be true.
# => nil

# -------------------

# and (or) && -> logial and operator
# or (or) || -> logial or operator
# use '&' or '|' to compare while executing the whole expression

true and false
# false
true or false
# true
false && false
# false

true && this_will_cause_an_error
false && this_will_not_cause_an_error
true or this_will_not_cause_an_error
true || this_will_not_cause_an_error
true | this_will_cause_an_error
true | false

# Duck typing (Ruby behaves like a strongly typed language most of the time [below example shows change to existing class at run time though!])

4 + 'four'
# TypeError
4.class
# => Fixnum
(4.0).class
# => Float
4 + 4.0
# => 8.0


# def keyword defines but doesn't execute a function

def add_them_up
  4 + 'four'
end

add_them_up
# TypeError: String can't be coerced into Fixnum
# 	from (irb):42:in `+'
# 	from (irb):42:in `add_them_up'
# 	from (irb):44

# ^^^ does type checking only when you execute the code, known as 'dynamic typing' (not static typing)
# Advantages of this -> classes don't have to be inherited from the same parent to be used in the same way

i = 0
a = ['100', 100.0]
while i < 2
  puts a[i].to_i
  i = i + 1
end
# 100
# 100
# to_i being the 'quack' method [converts to an integer] (turning both the string and the float into an integer)


# Day 1 Self-study
# ----------------

string = 'Hello world'
# => "Hello world"
string.sub('world', 'Matt')
# => "Hello Matt"