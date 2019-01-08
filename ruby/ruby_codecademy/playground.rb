# hashes
my_goals = Hash.new("add_a_date")

my_goals["Pro developer"] = "2019.06"
my_goals["Talk at Euro conference"] = "2019.05"
my_goals["Start bootcamp"] = "2019.02"

# puts my_goals
# puts my_goals.sort
# puts my_goals.select { |goal, date| date > "2019.05" }
# my_goals.each { |goal, date| puts date }

my_hash = {
  name: "Matt",
  age: "40"
}

# puts my_hash[:name]

# symbols

dev_goals = {
  pass_bootcamp: 4,
  join_team_as_dev: 5,
  first_feature: 7,
}

# puts dev_goals
# puts dev_goals.select { |goal, month| goal == :first_feature }
# puts dev_goals.sort_by { |goal, month| month }.reverse


# loops




# input

# puts "Hi, tell me about yourself!"
# puts "What's your name?"
# name = gets.chomp

# puts "Hi #{name}, what's your profession?"
# profession = gets.chomp

# puts "How long have you been a #{profession} #{name}?"
# service = gets.chomp


# Procs

cube = Proc.new { |x| x ** 3 }

[1, 2, 3].collect!(&cube) # ==> [1, 8, 27]
[4, 5, 6].map!(&cube) # ==> [64, 125, 216]

hi = Proc.new { puts "hello!" }
hi.call # => "hello!"
