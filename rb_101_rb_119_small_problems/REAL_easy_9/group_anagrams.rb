=begin
Write a program that prints out groups of words that are 
anagrams. Anagrams are words that have the same exact 
letters in them but in a different order.

___________________________________________________________

All anagrams from `words`:
["demo", "dome", "mode"]
["neon", "none"]
["tied", "diet", "edit", "tide"]
["evil", "live", "veil", "vile"]
["fowl", "wolf", "flow"]

- Iterate over the array
- Check if the next word has the same number of letters
  and the same letters
=end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
        'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
        'flow', 'neon']

def anagrams(words)
  new_hash = {}
  counter = 0
  
  loop do
    current_word = words[counter]

    h = Hash.new(0)
    current_word.each_char do |char|
      h[char] = current_word.count(char)
    end

    p h

    if !new_hash.key?(h)
      new_arr = [current_word]
      new_hash[h] = new_arr
      p new_hash
    else
      new_hash[h] << current_word
      p new_hash
    end

    counter += 1

    break if counter >= words.size
  end

  new_hash.values
end

p anagrams(words)
=begin
{"d"=>1, "e"=>1, "m"=>1, "o"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo"]}
{"n"=>2, "o"=>1, "e"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo"], {"n"=>2, "o"=>1, "e"=>1}=>["none"]}
{"t"=>1, "i"=>1, "e"=>1, "d"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied"]}
{"e"=>1, "v"=>1, "i"=>1, "l"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil"]}
{"d"=>1, "o"=>1, "m"=>1, "e"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil"]}
{"m"=>1, "o"=>1, "d"=>1, "e"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil"]}
{"l"=>1, "i"=>1, "v"=>1, "e"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live"]}
{"f"=>1, "o"=>1, "w"=>1, "l"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl"]}
{"v"=>1, "e"=>1, "i"=>1, "l"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live", "veil"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl"]}
{"w"=>1, "o"=>1, "l"=>1, "f"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live", "veil"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl", "wolf"]}
{"d"=>1, "i"=>1, "e"=>1, "t"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied", "diet"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live", "veil"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl", "wolf"]}
{"v"=>1, "i"=>1, "l"=>1, "e"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied", "diet"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live", "veil", "vile"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl", "wolf"]}
{"e"=>1, "d"=>1, "i"=>1, "t"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied", "diet", "edit"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live", "veil", "vile"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl", "wolf"]}
{"t"=>1, "i"=>1, "d"=>1, "e"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied", "diet", "edit", "tide"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live", "veil", "vile"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl", "wolf"]}
{"f"=>1, "l"=>1, "o"=>1, "w"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied", "diet", "edit", "tide"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live", "veil", "vile"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl", "wolf", "flow"]}
{"n"=>2, "e"=>1, "o"=>1}
{{"d"=>1, "e"=>1, "m"=>1, "o"=>1}=>["demo", "dome", "mode"], {"n"=>2, "o"=>1, "e"=>1}=>["none", "neon"], {"t"=>1, "i"=>1, "e"=>1, "d"=>1}=>["tied", "diet", "edit", "tide"], {"e"=>1, "v"=>1, "i"=>1, "l"=>1}=>["evil", "live", "veil", "vile"], {"f"=>1, "o"=>1, "w"=>1, "l"=>1}=>["fowl", "wolf", "flow"]}
[["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]
=end

=begin
[["demo", "dome", "mode"], 
["none", "neon"], 
["tied", "diet", "edit", "tide"], 
["evil", "live", "veil", "vile"], 
["fowl", "wolf", "flow"]]
=end



## Possible solution
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
        'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
        'flow', 'neon']

result = {}

words.each do |word|
  # Sort letters in each word
  key = word.split('').sort.join
  # p key

  if result.has_key?(key)
    result[key].push(word)
    # p result
  else
    result[key] = [word]
    # p result
  end
end

result.each_value do |v|
  puts "------"
  p v
end

=begin
"demo"
{"demo"=>["demo"]}
"enno"
{"demo"=>["demo"], "enno"=>["none"]}
"deit"
{"demo"=>["demo"], "enno"=>["none"], "deit"=>["tied"]}
"eilv"
{"demo"=>["demo"], "enno"=>["none"], "deit"=>["tied"], "eilv"=>["evil"]}
"demo"
{"demo"=>["demo", "dome"], "enno"=>["none"], "deit"=>["tied"], "eilv"=>["evil"]}
"demo"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied"], "eilv"=>["evil"]}
"eilv"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied"], "eilv"=>["evil", "live"]}
"flow"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied"], "eilv"=>["evil", "live"], "flow"=>["fowl"]}
"eilv"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied"], "eilv"=>["evil", "live", "veil"], "flow"=>["fowl"]}
"flow"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied"], "eilv"=>["evil", "live", "veil"], "flow"=>["fowl", "wolf"]}
"deit"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied", "diet"], "eilv"=>["evil", "live", "veil"], "flow"=>["fowl", "wolf"]}
"eilv"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied", "diet"], "eilv"=>["evil", "live", "veil", "vile"], "flow"=>["fowl", "wolf"]}
"deit"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied", "diet", "edit"], "eilv"=>["evil", "live", "veil", "vile"], "flow"=>["fowl", "wolf"]}
"deit"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied", "diet", "edit", "tide"], "eilv"=>["evil", "live", "veil", "vile"], "flow"=>["fowl", "wolf"]}
"flow"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none"], "deit"=>["tied", "diet", "edit", "tide"], "eilv"=>["evil", "live", "veil", "vile"], "flow"=>["fowl", "wolf", "flow"]}
"enno"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none", "neon"], "deit"=>["tied", "diet", "edit", "tide"], "eilv"=>["evil", "live", "veil", "vile"], "flow"=>["fowl", "wolf", "flow"]}
------
["demo", "dome", "mode"]
------
["none", "neon"]
------
["tied", "diet", "edit", "tide"]
------
["evil", "live", "veil", "vile"]
------
["fowl", "wolf", "flow"]
=end



## Experiments:
word = 'hello'
result = word.each_char { |char| char }
p result  # hello
