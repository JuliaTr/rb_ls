## What will the following code return and why?
result = ['apple', 'banana', 'cherry'].map do |fruit|
  if fruit.size > 5
    fruit.upcase
  end
end
p result
# [nil, "BANANA", "CHERRY"]



result = %w(a b c d e).map do |char|
  if char == 'c'
    3
  else
    char
  end
end

p result  # ["a", "b", 3, "d", "e"]



result = %w(a b c d e).map do |char|
  if char == 'c'
    3
  else
    char
  end
end.select do |element|
  element.to_i.odd?
end

p result  # [3]
