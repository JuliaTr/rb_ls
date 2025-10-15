=begin
Make a madlibs program that reads in some text from a text file 
that you have created, and then plugs in a selection of 
randomized nouns, verbs, adjectives, and adverbs into that text 
and prints it. You can build your lists of nouns, verbs, 
adjectives, and adverbs directly into your program, but the text 
data should come from a file or other external source. Your 
program should read this text, and for each line, it should 
place random words of the appropriate types into the text, and 
print the result.
=end

ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS = %w(fox dog head leg).freeze
VERBS = %w(jumps lifts bites licks).freeze
ADVERBS = %w(easily lazily noisily excited).freeze

File.open('madlibs.txt') do |file|
  p file

  file.each do |line|
    p line
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end

=begin
Output for `p file`:

#<File:madlibs.txt>
=end

=begin
Ouput for `p line`:

"The %{adjective} brown %{noun} %{adverb}\n"
"%{verb} the %{adjective} yellow\n"
"%{noun}, who %{adverb} %{verb} his\n"
"%{noun} and looks around."
=end

=begin
Output:
The quick brown dog excited
lifts the sleepy yellow
head, who noisily licks his
fox and looks around.
=end



## Experiments:
File.open('madlibs.txt') do |f|
  p f.is_a?(IO)  # true
  puts f.gets    # read one line
end

=begin
true
The %{adjective} brown %{noun} %{adverb}
=end


STDOUT.puts "Hello"  # Hello


STDIN.each_line do |line|
  puts "You typed: #{line}"
end

=begin
hi
You typed: hi

(infinite loop)
=end
