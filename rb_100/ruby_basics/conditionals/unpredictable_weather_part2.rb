=begin
In the code below, sun is randomly assigned as 'visible' or 
'hidden'. Write an unless statement that prints 
`"The clouds are blocking the sun!"` unless `sun` equals 
`'visible'`.
=end

sun = ['visible', 'hidden'].sample

unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

# Output:
# The clouds are blocking the sun!
