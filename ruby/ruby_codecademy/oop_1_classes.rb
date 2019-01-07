class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description

# ----------------

class Person
  def initialize(name)
    @name = name
  end
end

matz = Person.new("Yukihiro")

# --- Class Variables (shared across all instances of a class) ---

class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"


# --- Inheritance ---

class DerivedClass < BaseClass
  # Some stuff!
end

# override inherited methods

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end

# --- override the override with parent (superclass) methos - using 'super' keyword ---
=begin
When you call super from inside a method that tells Ruby to look in the superclass of the current class
and find a method with the same name as the one from which super is called.
If it finds it, Ruby will use the superclass' version of the method.
=end

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight
    puts "Instead of breathing fire"
    super
  end
end

# shorthand...
class Dragon < Creature; end

# ----------------

class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end

my_message = Message.new("Katie", "Matt")

class Email < Message
	def initialize(from, to)
    super
  end
end