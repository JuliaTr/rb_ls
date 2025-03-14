# Question 2: Multi-Character String Reference (Intermediate)

phrase = "Ruby programming is fun"

### Write code to extract:

#### 1. The word "programming"
puts phrase[5, 11]          # programming
# or
puts phrase[5..15]          # programming
# or
puts phrase[-18, 11]        # programming
# or
puts phrase['programming']  # programming


#### 2. The first 4 characters
puts phrase[0, 4]            # Ruby
# or
puts phrase[0..3]            # Ruby


#### 3. The last 3 characters
p phrase.length              # 23

puts phrase[20, 3]           # fun
# or
puts phrase[-3, 3]           # fun
# or
puts phrase[20..23]          # fun


# 4. Characters from index 5 to 10
puts phrase[5..10]           # progra
