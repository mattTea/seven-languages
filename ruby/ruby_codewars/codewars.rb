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