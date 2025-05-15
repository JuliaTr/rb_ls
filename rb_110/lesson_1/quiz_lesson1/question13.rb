result = [1, 2, 3, 4, 5].each do |num|
  num + 1   # `each` ignores block's return value
end

p result  # [1, 2, 3, 4, 5]



result = [1, 2, 3, 4, 5].select do |num|
  num + 1   # always truthy value
end

p result  # [1, 2, 3, 4, 5]



result = [1, 2, 3, 4, 5].map do |num|
  num + 1  # `map` modifies element considering block's return value
end

p result   # [2, 3, 4, 5, 6]
