# odds = [1, 2, 3, 4, 5]

# odds.each { |number| puts number * 2 }

# # Output:
# # 2
# # 4
# # 6
# # 8
# # 10


# Experiments:
arr1 = [1, 3]
arr2 = [2, 4]

arr1.each do |number|
  arr2.each do |element|
    if number.odd?
      puts element + 2
    end
  end
end

# Output:
# 4
# 6
# 4
# 6