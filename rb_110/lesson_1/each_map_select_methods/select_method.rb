result = [1, 2, 3].select do |num|
  num.odd?
end

p result  # [1, 3]
