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