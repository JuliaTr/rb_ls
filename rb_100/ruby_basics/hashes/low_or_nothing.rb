=begin
In the following code, `numbers` isn't mutated because `#select` 
isn't a destructive method. However, there is a destructive 
version of `#select` named `#select!`. Modify the code to use 
`#select!` instead of `#select`.
=end

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |_, v| v < 25 } 
p low_numbers
p numbers

# Output:
# {:low=>10}
# {:high=>100, :medium=>50, :low=>10}

=begin
Expected output:
{:low=>10}
{:low=>10}
=end



## Solution:
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! { |_, v| v < 25 }
p low_numbers
p numbers

# Output: as expected
# {:low=>10}
# {:low=>10}
