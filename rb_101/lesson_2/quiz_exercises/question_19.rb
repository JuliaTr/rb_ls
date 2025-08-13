name = "Lisa"

def name
  "George"
end

loop do
  puts name
  break
end

# Output: Lisa 

=begin
Ruby prioritizes referencing a local variable, first within the 
blocks scope. Blocks' variable scope can access local variables 
initialized in the outer scope.
=end
