# 1.
# My attempt, not sure why it failed some tests (missed element at index 14 for some reason??)
# def remove_every_other(arr)
#   arr.filter { |item| arr.index(item).even? }
# end

# Solution from codewars
def remove_every_other(arr)
  arr.select.with_index { |element, index| index.even? }
end

puts remove_every_other(["l", "c", "q", "2", "g", "p", "y", "a", "t", "w", "y", "n", "f", "z", "p", "0", "b", "c", "g"])


# 2.
# Write function RemoveExclamationMarks which removes all exclamation marks from a given string.
def remove_exclamation_marks(s)
  s.gsub(/!/, "")
end

puts remove_exclamation_marks("Hello World!")


# 3.
# 2 bullets to defeat a dragon, return True if yes, False otherwise
def hero(bullets, dragons)
  bullets / 2 >= dragons
end

# 4. 
# Strings to Jaden Case... "How Can Mirrors Be Real If Our Eyes Aren't Real"
class String
  def toJadenCase
    string_array = self.split(" ")
    string_array.each { |word| word.capitalize! }
    return string_array.join(" ")
  end
end

class String
  def toJadenCase
    string_array = self.split(" ").each { |word| word.capitalize! }
    string_array.join(" ")
  end
end

puts "Hi my name is Matt".toJadenCase()

# 5.
=begin
You will receive a single array of 10 numbers from 1 to 26. Duplicate numbers within the array are possible.
Each number corresponds to their alphabetical order letter (e.g. 1 = A. 2 = B, etc).
Write a function where you will win the game if your numbers can spell "BINGO".
They do not need to be in the right order in the input array. Otherwise you will lose.
Your outputs should be "WIN" or "LOSE" respectively.
=end

def bingo(arr)
  if arr.include?(2) && arr.include?(9) && arr.include?(14) && arr.include?(15) && arr.include?(7)
    return "WIN"
  else
    return "LOSE"
  end
end

puts bingo([1, 2, 9, 14, 25, 6, 7, 8, 9, 26])
