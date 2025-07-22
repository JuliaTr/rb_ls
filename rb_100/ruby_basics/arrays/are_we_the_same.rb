# Compare `array1` and `array2` and print `true` or `false` 
# based on whether they match.

array1 = [1, 5, 9]
array2 = [1, 9, 5]

p array1 == array2   # false

=begin
The `==` compares each elements in `Array1` with the element
on the same indice in `Array2`. `Array1[1]` (`5`) isn't the same
as `Array2[1]` (`9`).
=end
