=begin
Practice Problem 14
Given this data structure write some code to return an 
array containing the colors of the fruits, and the sizes 
of the vegetables. The sizes should be uppercase and the 
colors should be capitalized.

Expected return value: 
[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map { |str| str.capitalize }
  else
    value[:size].upcase
  end
end

p result  
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
# Works as expected



## Solution from the assignment:
result = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p result 
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
