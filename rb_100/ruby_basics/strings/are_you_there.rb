=begin
Using the following code, print `true` if `colors` includes 
the color `'yellow'` and print `false` if it doesn't. Then, 
print `true` if `colors` includes the color `'purple'` and 
print `false` if it doesn't.

colors = 'blue pink yellow orange'

Expected output:
true
false

=end

colors = 'blue pink yellow orange'

puts true if colors.include?('yellow')        # true
puts false unless colors.include?('purple')   # false



## Possible solution:
colors = 'blue pink yellow orange'

puts colors.include?('yellow')   # true
puts colors.include?('purple')   # false



## Further exploration:
colors = 'blue boredom yellow'

puts colors.include?('red')     # true

=begin
The output is `true`, because `#include?` looks for a substring
in an argument in the whole string that `colors` references.
Since `red` is a part of `boredom`, the output is `true`.
=end
