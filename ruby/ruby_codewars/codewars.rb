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
  arr.each_index do |index|
    if index == 0
      a = 0
      b =  
    else
      # 
    end

    # add all items in the array at positions lower than index -> set equal to 'a'
    # add all items in the array at positions higher than items -> set equal to 'b'
    if a == b
      return item array position
    else
      return -1 # <- don't want to do this for all a != b iterations though (just once if none equal)
    end
  end
end


arr = {1,2,3,4,3,2,1}

puts find_even_index(arr)


=begin

think i need to create 2 new arrays... one with the values below index, another with the values above index
-> array.slice(index)

i = 0
arr.each_index |index| (OR for index in arr...)
  create these arrays
  sum all values in each array (a.sum AND b.sum)
  if sum_arr_a == sum_arr_b
    return index
  else
    index += 1
  end

  if no index returns true for sum_arr_a == sum_arr_b
    return -1
  end
end

=end