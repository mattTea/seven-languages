# hashes are similar to JS objects (a collection of key:value pairs)

my_hash = { # <- created using 'literal notation'
  "name" => "Matt",
  "age" => 40,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]


my_new_hash = Hash.new # <- same as setting my_new_hash = {} (not literal notation)

my_new_hash["Bootsie"] = "cat" # <- adds new key of "Bootsie" with a value "cat" to hash
puts pets["Bootsie"] # <- prints "cat"


# iterating over hashes
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# Iterating over hashes

restaurant_menu = {
  "noodles" => 4,
  "soup" => 3,
  "salad" => 2
}

restaurant_menu.each do |item, price| # <- 2 placeholder variables required (item and price)
  puts "#{item}: #{price}"
end

# Iterate and just output the value...
lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each { |name, order| puts order }
