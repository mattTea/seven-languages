# 1.

def remove_every_other(arr)
  # arr.filter { |item| arr.index(item).even? }
  arr.filter { |item| arr.index(item) % 2 == 0 }
end

puts remove_every_other(["l", "c", "q", "2", "g", "p", "y", "a", "t", "w", "y", "n", "f", "z", "p", "0", "b", "c", "g"])
