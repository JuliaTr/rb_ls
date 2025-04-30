=begin
Exercise (intermediate): Create a method that takes an array 
of hashes representing people (with keys `:name` and `:age`) 
and returns a new array containing only the hashes of people 
who are older than a specified age.

people = [
  {name: 'Alice', age: 28},
  {name: 'Bob', age: 22},
  {name: 'Charlie', age: 31},
  {name: 'Diana', age: 25}
]

select_by_age(people, 25) 
# => [{:name=>"Alice", :age=>28}, {:name=>"Charlie", :age=>31}]
=end

people = [
  {name: 'Alice', age: 28},
  {name: 'Bob', age: 22},
  {name: 'Charlie', age: 31},
  {name: 'Diana', age: 25}
]

def select_by_age(arr, older_25)
  new_arr = []
  counter = 0

  loop do
    p current_person = arr[counter]

    if current_person[:age] > 25
      new_arr << current_person
    end

    counter += 1
    break if counter >= arr.size
  end

  new_arr
end

p select_by_age(people, 25)
p people

# Output:
# {:name=>"Alice", :age=>28}     (to test)
# {:name=>"Bob", :age=>22}       (to test)
# {:name=>"Charlie", :age=>31}   (to test)
# {:name=>"Diana", :age=>25}     (to test)

# [{:name=>"Alice", :age=>28}, {:name=>"Charlie", :age=>31}]

# [{:name=>"Alice", :age=>28}, {:name=>"Bob", :age=>22}, 
  # {:name=>"Charlie", :age=>31}, {:name=>"Diana", :age=>25}]
