# Iterating over each element of each sub_array

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array| 
  sub_array.each { |filling| puts filling }
end