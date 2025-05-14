# Exercise (advanced): Determine the output of this nested unless statement:
value = 15

unless value < 10                       # 15 < 10 (false)
  puts "Greater than or equal to 10"

  unless value > 20                     # 15 > 10 (false)
    puts "Less than or equal to 20"

    unless value == 15                  # 15 == 15 (true)
      puts "Not 15"
    else
      puts "Exactly 15"
    end

  end

end

# Output:
# Greater than or equal to 10
# Less than or equal to 20
# Exactly 15
