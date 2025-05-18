=begin
Exercise: Element Reference Challenge (Basic)

Write a method called `extract_elements` that takes a string, 
array, and hash as arguments. The method should return a new 
array containing:
•   The third character from the string
•   The first and last elements from the array
•   The value associated with the key `:name` from the hash
=end

def extract_elements(str, arr, h)
  new_arr = []

  new_arr << str[2]
  new_arr << arr.first
  new_arr << arr.last
  new_arr << h[:name]

  new_arr
end

p extract_elements("programming", [1, 2, 3, 4, 5], {name: "Ruby", year: 1995}) == ["o", 1, 5, "Ruby"]
# true
p extract_elements("launch", ["a", "b", "c"], {name: "school", type: "coding"}) == ["u", "a", "c", "school"]
# true
p extract_elements("hello", [], {language: "Ruby"}) == ["l", nil, nil, nil]
# true



## Refactor:
# Option 1:
def extract_elements(str, arr, h)
  new_arr = []
  new_arr.push(str[2], arr.first, arr.last, h[:name])
  new_arr
end

p extract_elements("programming", [1, 2, 3, 4, 5], {name: "Ruby", year: 1995}) == ["o", 1, 5, "Ruby"]
# true
p extract_elements("launch", ["a", "b", "c"], {name: "school", type: "coding"}) == ["u", "a", "c", "school"]
# true
p extract_elements("hello", [], {language: "Ruby"}) == ["l", nil, nil, nil]
# true
