## Array Examples with `map`:
result = [1, 2, 3].map do |num|
          if num.odd?
            num * 2
          end
        end

p result # [2, nil, 6]



result = ['ant', 'bear', 'cat'].map do |animal|
          animal[0]
          animal.size
        end

p result  # [3, 4, 3]



result = [false, 'hi', 99].map do |element|
          element.to_s
          element.class
        end

p result  # [FalseClass, String, Integer]



result = ['ruby', 'rails'].map do |word|
  word.each_char.with_index do |char, idx|
    char * idx
  end
end

p result # ["ruby", "rails"]


## Experiments:
p "word" * 0   # ""
p "word" * 1   # 1

p("hello".each_char { |char| p char })
# Output:
# "h"
# "e"
# "l"
# "l"
# "o"
# "hello"



## Hash Examples with `map`
result = { a: 'ant', b: 'bear' }.map do |_, value|
  value.length > 3
end

p result # [false, true]



h = { first: 1, second: 'two', third: [3] }
result = h.map do |key, value|
  [key, value.to_s]
end

p result  # [[:first, "1"], [:second, "two"], [:third, "[3]"]]
