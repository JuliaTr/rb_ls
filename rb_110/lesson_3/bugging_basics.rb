require 'pry'

=begin
The program should create a hash that maps the words that
occure in the sentence to the number of times that they occure
in the sentence.
=end

def word_map(sentence)
  words = sentence.split
  map = {}

  words.each do |word|
    binding.pry
    if map.key?(word)
      map[word] + 1    # issue is here
    else
      map[word] = 1
    end
  end

  map
end

p word_map('I want what I want')  
# Expected output: {"I"=>2, "want"=>2, "what"=>1}
# Actual output: {"I"=>1, "want"=>1, "what"=>1}

=begin
`pry` session:

$ ruby bugging_basics.rb

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
    20:   end
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
    20:   end
    21: 
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
    20:   end
    21: 
    22:   map
set mark: ...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
    20:   end
    21: 
    22:   map
[1] pry(main)> map
=> {}
[2] pry(main)> words
=> ["I", "want", "what", "I", "want"]
[3] pry(main)> word
=> "I"
[4] pry(main)> map.key?(word)
=> false
[5] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
    20:   end
    21: 
    22:   map
    23: end

[1] pry(main)> map
=> {"I"=>1}
[2] pry(main)> word
=> "want"
[3] pry(main)> map.key?(map)
=> false
[4] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
    20:   end
    21: 
    22:   map
    23: end

[1] pry(main)> map
=> {"I"=>1, "want"=>1}
[2] pry(main)> word
=> "what"
[3] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
    20:   end
    21: 
    22:   map
    23: end

[1] pry(main)> map
=> {"I"=>1, "want"=>1, "what"=>1}
[2] pry(main)> word
=> "I"
[3] pry(main)> map.key?(word)
=> true
[4] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/bugging_basics.rb:14 Object#word_map:

     9: def word_map(sentence)
    10:   words = sentence.split
    11:   map = {}
    12: 
    13:   words.each do |word|
 => 14:     binding.pry
    15:     if map.key?(word)
    16:       map[word] + 1    # issue is here
    17:     else
    18:       map[word] = 1
    19:     end
    20:   end
    21: 
    22:   map
    23: end

[1] pry(main)> map
=> {"I"=>1, "want"=>1, "what"=>1}
[2] pry(main)> word
=> "want"
[3] pry(main)> map[word] + 1
=> 2
[4] pry(main)> map
=> {"I"=>1, "want"=>1, "what"=>1}
[5] pry(main)> map[word] += 1
=> 2
[6] pry(main)> map
=> {"I"=>1, "want"=>2, "what"=>1}
[7] pry(main)> exit
{"I"=>1, "want"=>2, "what"=>1}
=end