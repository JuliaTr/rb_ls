# # strings, arrays, references, mutation

# # Snippet 1
# def modify_string(str)
#   str[0] = 'J'
#   # p str                 # "Juby"
#   str << 'ava'          # "Jubyava"
# end

# text = "Ruby"
# p text.object_id        # 60

# modify_string(text)     # "Jubyava"

# puts text               # Jubyava
# puts text.object_id     # 60

# new_text = text[0, 2]
# puts new_text           # Ju
# puts new_text.object_id   # 80

# text[0].downcase!      # "j"

# puts text              # Jubyava
# puts new_text          # Ju

# # In `text[0, 2]` `2` is length.



# # Snippet 2:
# arr = ['hello', 'world']
# str = arr[0]   # arr = [str, 'world']

# arr[0][0] = 'H'  # arr = ['Hello', 'world']
# str[1] = 'A'     # arr = ['HAllo', 'world']

# puts arr.inspect       # ['HAllo', 'world']
# puts str               # HAllo
# puts arr[0].object_id  # 60
# puts str.object_id     # 60; the same as `arr[0]`

# new_str = str[0] + str[-1]
# puts new_str                 # "Ho"
# puts new_str.object_id       # 80



# # Snippet 3;
# def manipulate(a, b)
#   a << b       # ["ab", "cd", "ef"]
#   b[0] = a[1]  # ["ab", "cd", "cdf"]
# end

# x = ["ab", "cd"]
# y = "ef"
# p y.object_id        # 60

# manipulate(x, y)     # ["ab", "cd", "cdf"]

# puts x.inspect       # ["ab", "cd", "cdf"]
# puts y               # cdf
# puts x[1].object_id  # 80
# puts y.object_id     # 60



# # Snippet 4:
# def modify_array(arr)
#   arr.map! do |word|  # arr = ["HELLO", "WORLD"]
#     word.upcase
#   end
#   arr << "NEW"        # arr = ["HELLO", "WORLD", "NEW"]
# end

# words = ["hello", "world"]
# p words.object_id    # 60

# modify_array(words)  # ["HELLO", "WORLD", "NEW"]

# p words              # ["HELLO", "WORLD", "NEW"]
# p words.object_id    # 60
# p words[0]           # "HELLO"



# Snippet 5:
arr1 = ['a', 'b', 'c']
arr2 = arr1

arr2[1].upcase!   # B
arr2[2] = 'D'

p arr1     # ['a', 'B', 'D']
p arr2     # ['a', 'B', 'D']
