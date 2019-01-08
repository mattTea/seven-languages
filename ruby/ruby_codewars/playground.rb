def bingo(arr)
  if arr.include?(2) && arr.include?(9) && arr.include?(14) && arr.include?(15) && arr.include?(7)
    return "WIN"
  else
    return "LOSE"
  end
end

puts bingo([1, 2, 9, 14, 25, 6, 7, 8, 9, 26])
