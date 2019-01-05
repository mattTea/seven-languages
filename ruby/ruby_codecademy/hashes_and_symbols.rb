# keys must be unique

my_hash = { "language" => "Ruby",
  "difficulty" => "medium"
}

my_hash.each { |key, value| puts key, value }


matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each { |key, value| puts value }


no_nil_hash = Hash.new("default")
no_nil_hash["Matt"] = "person"
puts no_nil_hash["Bootsie"]


=begin

SYMBOLS
-------
Symbols pop up in a lot of places in Ruby, but they're primarily used either as hash keys or for referencing method names.

Symbols make good hash keys for a few reasons:
- They're immutable, meaning they can't be changed once they're created;
- Only one copy of any symbol exists at a given time, so they save memory;
- Symbol-as-keys are faster than strings-as-keys because of the above two reasons.
=end

sounds = {
  :cat => "meow",
  :dog => "woof",
  :computer => 10010110,
}

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = Array[]

strings.each do |s|
  symbols.push(s.to_sym)
end

puts symbols

# .intern (internatlise) is the same as .to_sym (Ruby internatlises the variable as a symbol)


# hash rocket '=>' has changes since Ruby 1.9, from this...
movies = {
	:deli => "Great dark comedy",
  :amelie => "Feel good French movie"
}

# to this...
movies = {
	deli: "Great dark comedy",
  amelie: "Feel good French movie"
}
# (the key is still a symbol in this syntax with the : at the end now)

puts movies[:amelie]


# To filter values (not keys) use .select (.select does not modify the hash)
grades = {
  alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

grades.select { |name, grade| grade <  97 }
# ==> { :bob => 92, :chris => 95 }

grades.select { |k, v| k == :alice }
# ==> { :alice => 100 }


# there are also .each_key and .each_value methods so we can iterate over just one or the other...
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

movie_ratings.each_key { |k| puts k}