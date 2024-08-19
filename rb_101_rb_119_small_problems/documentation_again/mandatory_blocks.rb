# Find the first element whose value exceeds `8`.

a = [1, 4, 8, 11, 15, 19]

new_value = a.bsearch { |element| element > 8 }
puts new_value     # 11