# What if we wanted to use floats instead of integers? 
# How does this change this problem?

# Two integer inputs are floats
def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_f
prompt("Enter the second number:")
second_number = gets.chomp.to_f

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")
=begin
==> Enter the first number:
23
==> Enter the second number:
17
==> 23.0 + 17.0 = 40.0
==> 23.0 - 17.0 = 6.0
==> 23.0 * 17.0 = 391.0
==> 23.0 / 17.0 = 1.3529411764705883
==> 23.0 % 17.0 = 6.0
==> 23.0 ** 17.0 = 1.4105003956066297e+23
=end



# One integer input is a float.
def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first neumber:")
first_number = gets.chomp.to_i
prompt("Enter the second number:")
second_number = gets.chomp.to_f

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")
=begin
==> Enter the first neumber:
23
==> Enter the second number:
17
==> 23 + 17.0 = 40.0
==> 23 - 17.0 = 6.0
==> 23 * 17.0 = 391.0
==> 23 / 17.0 = 1.3529411764705883
==> 23 % 17.0 = 6.0
==> 23 ** 17.0 = 1.4105003956066297e+23

==> Enter the first neumber:
23.1
==> Enter the second number:
17.3
==> 23 + 17.3 = 40.3
==> 23 - 17.3 = 5.699999999999999
==> 23 * 17.3 = 397.90000000000003
==> 23 / 17.3 = 1.329479768786127
==> 23 % 17.3 = 5.699999999999999
==> 23 ** 17.3 = 3.613196352179038e+23
=end