def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    if counter.odd                            # issue
      doubled_numbers << current_number * 2
    else
      doubled_numbers << current_number
    end

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers)
# should return [1, 8, 3, 14, 2, 12]

# Output: undefined method `odd' for 0:Integer (NoMethodError)

# Doesn't work as expected



def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    if counter.odd?
      doubled_numbers << current_number * 2
    else
      doubled_numbers << current_number
    end

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers) # [1, 8, 3, 14, 2, 12]

# Works as expected
