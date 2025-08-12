## Option 1:
num = 12

if num % 4 == 0 || num < 7 && num < 10
  puts 'Hello'
end

# Output: Hello



## Option 2:
num = 12

if num >= 8 && num < 6 || num > 4 && num < 16
  puts 'Hello'
end

# Output: Hello



## (doesn't work):
num = 12

if num < 4 || num > 8 && num < 10 || num > 16
  puts 'Hello'
end

=begin
12 < 4 || 12 > 8 && 12 < 10 || 12 > 16
12 < 4 || false || 12 > 16
false || false || false
false
=end
