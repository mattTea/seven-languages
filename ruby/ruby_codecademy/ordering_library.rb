def alphabetize(arr, rev=false) # <- second parameter has a default if not provided
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

def order(arr, rev=false)
  arr.sort!
  if rev == true
    arr.reverse!
  else
    return arr
  end
end

numbers = [4, 2, 6, 8, 1]
puts order(numbers, true) 