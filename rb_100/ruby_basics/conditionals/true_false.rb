=begin
In the code below, boolean is randomly assigned as `true` or 
`false'.
Write a ternary operator that prints `"I'm true!"` if boolean 
equals `true` and prints `"I'm false!"` if boolean equals `false`.
=end

boolean = [true, false].sample
boolean ? puts("I'm true!") : puts("I'm false!")

=begin
$ ruby true_false.rb
I'm false!

$ ruby true_false.rb
I'm true!
=end



## Experiments:
boolean = [true, false].sample
boolean ? puts "I'm true!" : puts "I'm false!"

=begin
true_false.rb:22: syntax error, unexpected string literal, expecting `do' or '{' or '(' (SyntaxError)
boolean ? puts "I'm true!" : puts "I'm false!"
=end


boolean = [true, false].sample
puts (boolean ? "I'm true!" : "I'm false!")

=begin
$ ruby true_false.rb
I'm false!

$ ruby true_false.rb
I'm true!
=end
