=begin
*Describe the difference between `!` and `?` in Ruby. And explain 
what would happen in the following scenarios:

1. what is `!=` and where should you use it?
2. put `!` before something, like `!user_name`
3. put `!` after something, like `words.uniq!`
4. put `?` before something
5. put `?` after something
6. put `!!` before something, like `!!user_name`*

The `!` is used in the following scenarios:
*1. what is `!=` and where should you use it?*
`!=` is a *not equal* operator. It is used for comparison values 
to check if 2 operands are not equal. Example: 
=end
1 != 2     # => true

=begin
*2. put `!` before something, like `!user_name`*
The `!` is used before something, like `!user_name` to return
a boolean `true` or `false` equivalent opposite to value of
the object referenced by `user_name`.
=end

user_name = 'Yuliia'
p !user_name   # false

=begin
A local variable `user_name` is initialized and references a String
object `Yuliia`. Strings, in Ruby, are always truthy values. In 
Ruby, evething is truthy, including `''`, `0`, except `false` and `nil`.
`!user_name` provides `false` value to negate a truthy value 
`'Yuliia'`.
=end


=begin
*3. put `!` after something, like `words.uniq!`*

The `!` at the end of Ruby built-in methods indicate that this
method is destructive, mutating the original object in place.

Example:
=end

words = ['I', 'love', 'love', 'programming', 'with', 'with', 'with', 'Ruby']
words.uniq! 
p words      # ["I", "love", "programming", "with", "Ruby"]

=begin
The `words.uniq!` has mutated the original object referenced by
`words` in place. After this operation `words` references the same,
but modified object.
=end

=begin
*6. put `!!` before something, like `!!user_name`*

The `!!` is used to turn a value into its boolean equivalent.

Example:
=end

user_name = 'Yuliia'
p !!user_name   # true

=begin
!!Yuliia 
!false
true
=end

=begin
Also, the `!` is used at the end of the custom method name to
indicate that this method mutates the original object, per Ruby 
convention. Example:
=end

def greeting!(name)
  name << ' welcome!'
end

name = 'Yuliia'
greeting!(name)
p name   # "Yuliia welcome!"

# The `name << ' welcome!` mutated the object referenced by 
# a local variable `name` initialized in the outer scope.


=begin
The `?` is used in the following scenarios:

*4. put `?` before something*
*5. put `?` after something*

The `?` is used in the ternary expression. Example:
=end

names = ['Yuliia', 'Bob'].sample

result = names == 'Yuliia' ? "It's me!" : "I don't know them."
puts result

=begin
$ ruby question_2.rb
I don't know them.

$ ruby question_2.rb
It's me!
=end

=begin
Also, the `?` is used at the end of the custom method name to
indicate that this method returns a boolean `true` or `false`, 
per Ruby convention. Example:
=end

names = ['Yuliia', 'Bob'].sample

def user_name?(name)
  name == 'Yuliia'
end

p user_name?(names)

=begin
$ ruby question_2.rb
true

$ ruby question_2.rb
false
=end
