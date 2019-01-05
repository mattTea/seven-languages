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
