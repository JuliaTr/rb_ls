puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split
p words

frequencies = Hash.new(0)
p frequencies

words.each do |word|
  frequencies[word] += 1  # frequencies[word] = frequencies[word] + 1
end
p frequencies

frequencies = frequencies.sort_by { |_, count| count }
p frequencies

frequencies.reverse!
p frequencies

frequencies.each do |word, count|
  puts "#{word} #{count}"
end

=begin
$ ruby histogram_project.rb
Enter a phrase you'd like to analyze: 
hi hi hi there
["hi", "hi", "hi", "there"]
{}
{"hi"=>3, "there"=>1}
[["there", 1], ["hi", 3]]
[["hi", 3], ["there", 1]]
hi 3
there 1
=end
