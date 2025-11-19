=begin
Write a program that prints out groups of words that are anagrams. 
Anagrams are words that have the same exact letters in them but 
in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

=end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
        'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
        'flow', 'neon']

result = {}

words.each do |word|
  key = word.chars.sort.join
  # p "-----------------------"
  if result.has_key?(key)
    # p "Key exist: #{key}"
    result[key].push(word)
    # p "Add value: #{word} to key: #{key}"
  else
    # p "Key doesn't exist. Create key: #{key}. Create value: #{word}"
    result[key] = [word]
  end
end

p result

result.each_value do |val|
  p val
end

=begin
"-----------------------"
"Key doesn't exist. Create key: demo. Create value: demo"
"-----------------------"
"Key doesn't exist. Create key: enno. Create value: none"
"-----------------------"
"Key doesn't exist. Create key: deit. Create value: tied"
"-----------------------"
"Key doesn't exist. Create key: eilv. Create value: evil"
"-----------------------"
"Key exist: demo"
"Add value: dome to key: demo"
"-----------------------"
"Key exist: demo"
"Add value: mode to key: demo"
"-----------------------"
"Key exist: eilv"
"Add value: live to key: eilv"
"-----------------------"
"Key doesn't exist. Create key: flow. Create value: fowl"
"-----------------------"
"Key exist: eilv"
"Add value: veil to key: eilv"
"-----------------------"
"Key exist: flow"
"Add value: wolf to key: flow"
"-----------------------"
"Key exist: deit"
"Add value: diet to key: deit"
"-----------------------"
"Key exist: eilv"
"Add value: vile to key: eilv"
"-----------------------"
"Key exist: deit"
"Add value: edit to key: deit"
"-----------------------"
"Key exist: deit"
"Add value: tide to key: deit"
"-----------------------"
"Key exist: flow"
"Add value: flow to key: flow"
"-----------------------"
"Key exist: enno"
"Add value: neon to key: enno"
{"demo"=>["demo", "dome", "mode"], "enno"=>["none", "neon"], 
"deit"=>["tied", "diet", "edit", "tide"], 
"eilv"=>["evil", "live", "veil", "vile"], 
"flow"=>["fowl", "wolf", "flow"]}

["demo", "dome", "mode"]
["none", "neon"]
["tied", "diet", "edit", "tide"]
["evil", "live", "veil", "vile"]
["fowl", "wolf", "flow"]
=end


## Experiments:
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
        'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
        'flow', 'neon']

array = []
words.each do |word|
  array << word.chars.sort.join
end
array_unique = array.uniq
p array_unique  # ["demo", "enno", "deit", "eilv", "flow"]
