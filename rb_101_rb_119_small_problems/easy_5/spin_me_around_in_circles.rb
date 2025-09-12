=begin
You are given a method named `spin_me` that takes a string as 
an argument and returns a string that contains the same words, 
but with each word's characters reversed. Given the method's 
implementation, will the returned string be the same object 
as the one passed in as an argument or a different object?
=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p spin_me("hello world") # "olleh dlrow"

# Different word is returned.
# Output return values:
def spin_me(str)
  arr = str.split   # a new array object is created

  p str             # string is unchanged
  p arr

  arr.each do |word|
    word.reverse!
  end

  p str             # string is unchanged
  p arr             # array is mutated

  arr.join(" ")     # a new string object is created
end

p spin_me("hello world") # "olleh dlrow"

=begin
$ ruby spin_me_around_in_circles.rb
"hello world"
["hello", "world"]
"hello world"
["olleh", "dlrow"]
"olleh dlrow"
=end



## Experiments:
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = 'hello world'
puts str.object_id            # 60
puts spin_me(str).object_id   # 80


def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id           # 60
puts spin_me(arr).object_id  # 60
