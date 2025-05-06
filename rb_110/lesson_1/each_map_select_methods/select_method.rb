result = [1, 2, 3].select do |num|
  num.odd?
end

p result  # [1, 3]



result = [1, 2, 3].select do |num|
  num + 1
end

p result   # [1, 2, 3]
