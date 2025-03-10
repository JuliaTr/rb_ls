my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
p my_array

my_array.sort!
p my_array

# Output:
# [3, 4, 8, 7, 1, 6, 5, 9, 2]
# [1, 2, 3, 4, 5, 6, 7, 8, 9]



# Exercise:
books = ["Charlie and the Chocolate Factory", "War and Peace", 
        "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
p books

books.sort!
puts books

# Output:
# ["Charlie and the Chocolate Factory", "War and Peace", 
# "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# Brief History of Time
# A Wrinkle in Time
# Charlie and the Chocolate Factory
# Utopia
# War and Peace



# Exercise (combined comparison operaor `<=>`):
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"

p book_1.length        # 17
p book_2.length        # 23

p book_1 <=> book_2    # 1



# Exercise:
books = ["Charlie and the Chocolate Factory", "War and Peace", 
        "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# Sort the books in ascending order, in place
books.sort! do |first_book, second_book| 
  first_book <=> second_book
end
p books
# ["A Brief History of Time", "A Wrinkle in Time", 
# "Charlie and the Chocolate Factory", "Utopia", "War and Peace"]

# Sort the books in descending order, in-place
books.sort! do |first_book, second_book| 
  second_book <=> first_book
end
p books
# ["War and Peace", "Utopia", "Charlie and the Chocolate Factory", 
# "A Wrinkle in Time", "A Brief History of Time"]



# Exercise:
fruits = ["orange", "apple", "banana", "pear", "grapes"]

# Sort in descending order
fruits.sort! do |first, second|
  second <=> first
end

puts fruits

# Output:
# pear
# orange
# grapes
# banana
# apple
