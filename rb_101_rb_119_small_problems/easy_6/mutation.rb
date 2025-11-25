# What will the following code print, and why?
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }  # now array2 has the same values as array1
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2 
# ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo"]

=begin
The `#<<` copies references to the values of the original array.
If we modify the reference in the original array, the values in the
`array2` are also modified.

If we can refernce, mutate array element (if they are mutable objects),
pushing them to another array, will mutate that another array.

Both arrays just hold pointers to objects.
=end



## Experiments:
arr1 = ['a', 'b', 'c']
arr2 = []

p arr1.object_id   # 60
p arr2.object_id   # 80



arr1 = ['a', 'b', 'c']
arr2 = ['a', 'b', 'c']

p arr1.object_id     # 60
p arr2.object_id     # 80



arr1 = ['a', 'b', 'c']
arr2 = []

arr1.each { |value| arr2 << value }

p arr1  # ["a", "b", "c"]
p arr2  # ["a", "b", "c"]

p arr1.object_id  # 60
p arr2.object_id  # 80



arr1 = ['a', 'b', 'c']
arr2 = []
arr1.each { |value| arr2 << value }
arr1.each { |value| value.upcase! if value.start_with?('a') }

p arr1  # ["A", "b", "c"]
p arr2  # ["A", "b", "c"]



## Further exploration (from links in assignment):
greeting = 'Hello'
p greeting               # "Hello"

p greeting.object_id     # 60

p 5.object_id            # 11
p true.object_id         # 20
p nil.object_id          # 4
p "abc".object_id        # 60

whazzup = greeting
p whazzup       # "Hello"

p greeting.object_id       # 60
p whazzup.object_id        # 60

p greeting.upcase!         # "HELLO"

p greeting                 # "HELLO"
p whazzup                  # "HELLO"

p whazzup.concat('!')      # "HELLO!"

p greeting                 # "HELLO!"
p whazzup                  # "HELLO!"

p greeting.object_id       # 60
p whazzup.object_id        # 60

greeting = 'Dude!'
p greeting                 # "Dude!"

puts greeting              # Dude!
puts whazzup               # HELLO!

p greeting.object_id       # 80
p whazzup.object_id        # 60


a = [1, 2, 3, 4, 5]
a[3] = 0
p a                          # [1, 2, 3, 0, 5]

a = %w(a b c)

p a                          # ["a", "b", "c"]
p a.object_id                # 60

p a[1] = '-'                 # "-"

p a                          # ["a", "-", "c"]
p a.object_id                # 60

a[1] = 'a'
a[1].upcase
p a                          # ["a", "a", "c"]

a[1].upcase!
p a                          # ["a", "A", "c"]
