=begin
Exercise:
Given a hash of family members, with keys as the title and 
an array of names as the values, use Ruby's built-in 
select method to gather only siblings' names into a new 
array.
=end

family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
        }

hash_siblings = family.select do |key, _|
  key == :sisters || key == :brothers
end

p hash_siblings.values.flatten
# ["jane", "jill", "beth", "frank", "rob", "david"]
