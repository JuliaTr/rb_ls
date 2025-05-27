## Array Examples with `map`:
result = [1, 2, 3].map do |num|
  if num.odd?
    num * 2
  end
end

p result # [2, nil, 6]
