## What will the following code return and why?
result = ['apple', 'banana', 'cherry'].map do |fruit|
  if fruit.size > 5
    fruit.upcase
  end
end
p result
# [nil, "BANANA", "CHERRY"]
