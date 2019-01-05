# 1. Sum of odd numbers

def row_sum_odd_numbers(n)
  return n ** 3
end

puts row_sum_odd_numbers(1) # => 1 (1**3)
puts row_sum_odd_numbers(2) # => 3 + 5 = 8 (2**2)
puts row_sum_odd_numbers(3) # => 7 + 9 + 11 = 27 (3**3)
puts row_sum_odd_numbers(13)


# 2. Get the middle character

def get_middle(s)
  if s.length % 2 == 0
    return "#{s[(s.length / 2) - 1]}#{s[s.length / 2]}"
  else
    return "#{s[(s.length - 1) / 2]}"
  end
end

puts get_middle("hello") # => "l"
puts get_middle("test") # => "es"
puts get_middle("middle")


# 3. Equal sides of an array

# You are going to be given an array of integers.
# Find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N.
# If there is no index that would make this happen, return -1.

def find_even_index(arr)
  i = 0
  a = 0
  b = 1
  for i in 0...arr.length
    a = arr.slice(0, i).sum
    b = arr.slice(i + 1, arr.length - 1).sum
    if a != b && i == arr.length - 1
      return -1
    elsif a != b
      i += 1
    else
      return i
    end
  end
end

# arr = [1,2,3,4,3,2,1]
# arr = [1,100,50,-51,1,1]
arr = Array(1..100)

puts find_even_index(arr)