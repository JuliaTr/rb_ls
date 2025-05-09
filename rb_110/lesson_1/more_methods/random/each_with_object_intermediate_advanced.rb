# Exercise (intemediate): What will the following code return?
hash = { 'a' => 10, 'b' => 20, 'c' => 30 }

new_h = hash.each_with_object({}) do |(key, value), result|
  result[value.to_s] = key.upcase if value > 15
end

p new_h  # { "20"=>"B", "30"=>"C"}
