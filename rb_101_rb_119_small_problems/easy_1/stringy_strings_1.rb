## Further exploration

# Modify `stringy` so it an additional argument that defaults to `1`.
# If the method is called with this argument set to `0`, the method
# should retturn a String of alternating 0s and 1s, but starting with `0` instead of `1`.

def stringy(int, second_param = 1)
  result = []

  int.times do |index|
    number =  if second_param == 1
                index.even? ? second_param : 0
              else
                index.even? ? second_param : 1
              end
    result << number
  end

  result.join
end

puts stringy(6) == '101010'
puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(9, 0) == '010101010'
puts stringy(4) == '1010'
puts stringy(4, 0) == '0101'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'
