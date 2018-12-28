print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

# -----------------

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

# -----------------

problem = false

print "Good to go!" unless problem

# -----------------

time = 9.01

if time > 9.00
  late = true
else
  late = false
end

unless late
  puts "Get yourself a coffee."
else
  puts "Run to first meeting!"
end