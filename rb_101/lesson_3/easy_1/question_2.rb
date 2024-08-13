=begin
What is the difference between `!` and `?`? What would happen in the following scenarios:
1. what is `!=` and where should you use it?
2. put `!` before something, like `!user_name`
3. put `!` after something, like `words.uniq!`
4. put `?` before something
5. put `?` after something
6. put `!!` before something, like `!!user_name`

ANSWER:
1. The `!=` operator can be used when there's a need to compare two operands. The boolean value will be returned.
Example:
```ruby
5 != 6
# => true
```

2. When the bang (`!`) operator is put before something it will evaluate the expression as false or consider false, or is false.
Example:
```ruby
user_name = "Bob"
!user_name
# => false
```

3. When the bang ('!') opeartor is put after something, like `words.uniq!`, then the method `uniq!`, called on the variable `words`, mutates the caller.
Example:
```ruby
words = ["hi", "hello", "hi", "hola"]
words.uniq!
# => ["hi", "hello", "hola"]
p words
# => ["hi", "hello", "hola"]
```

4. When the `?` is used before something, this is a ternary operator for `if...else` statement. 
Examples:
```ruby
if 4 < 2 ? "4 is less than 2" : "4 is greater than 2"
```

5. When the `?` is used after something this is the part of the method name, and not Ruby syntax.
Also, `?` is beeing used in the ternary operator after the conditional for `if...else` statement, which is actual Ruby syntax: 
Examples:
```ruby
puts "Please provide a valid nunmer."
input = gets.chomp

def valid_number?(input)
  input.to_i.to_s == input
end

number = valid_number?(input)
# => true
```

6. When the double bang (`!!`) operator is before something, like `!!user_name`, then this expression will be evaluated as true.
Example:
```ruby
user_name = "Bob"
!!user_name
# => true
```
=end