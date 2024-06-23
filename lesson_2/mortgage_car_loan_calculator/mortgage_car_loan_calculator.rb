# monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (-loan_duration_in_months)))
# puts monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-12)))   # 11282.541002081534
# puts monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-24)))   # 7247.0900752686985
# puts monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-36)))   # 6043.445712047528


def how_much_to_pay(loan_amount, monthly_interest_rate, loan_duration_in_months)
  monthly_payment = loan_amount * (monthly_interest_rate.to_i.to_f / (1 - (1 + monthly_interest_rate.to_i.to_f) ** (-loan_duration_in_months.to_i.to_f)))
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i().to_s() == input
end

def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end


# Name validation
puts "Welcome in Mortgage / Car Loan Calculator! Enter your name:"

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    puts "Please enter your valid name."
  else
    break
  end
end

puts "Hi #{name}!"

# Amount of loan validation
loan_amount = ''
  loop do
    puts "What amount of loan do you need?"
    loan_amount = Kernel.gets().chomp()

    if number?(loan_amount)
      break
    else
      puts "Please provide a valid amount of loan."
    end
  end

# Monthly interest rate validation
monthly_interest_rate = ''
  loop do
    puts "What monthly interest rate are you looking for?"
    monthly_interest_rate = Kernel.gets().chomp()

    if number?(monthly_interest_rate)    # TO DO validation if monthly interest rate is 5%, not 0.05?
      break
    else
      puts "Please provide a valid monthly interest rate."
    end
  end

# puts monthly_interest_rate.class.inspect

# puts "What is loan duration in months?"
# loan_duration_in_months = gets.chomp

loan_duration_in_months = ''
  loop do
    puts "What is loan duration in months?"
    loan_duration_in_months = Kernel.gets().chomp()

    if number?(loan_duration_in_months)    # TO DO validation if loan duration in months is in years?
      break
    else
      puts "Please provide a valid loan duration in months."
    end
  end

how_much_to_pay(loan_amount, monthly_interest_rate, loan_duration_in_months)

puts "Your monthly payment is #{how_much_to_pay}"