# monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (-loan_duration_in_months)))

# puts monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-12)))   # 11282.541002081534
# puts monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-24)))   # 7247.0900752686985
# puts monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-36)))   # 6043.445712047528


def how_much_to_pay(loan_amount, monthly_interest_rate, loan_duration_in_months)
  monthly_payment = loan_amount * (monthly_interest_rate.to_i.to_f / (1 - (1 + monthly_interest_rate.to_i.to_f) ** (-loan_duration_in_months.to_i.to_f)))
end

def valid_number?(input)
  valid_integer?(input) || valid_float?(input)
end

def valid_integer?(input)
  input.to_i() if input.to_i().to_s() == input
end

def valid_float?(input)
  input.to_f() if input.to_f().to_s() == input
end

def get_loan
  loan_amount = ''
  converted_loan_amount = nil
  loop do
    puts "What amount of loan do you need?"
    loan_amount = Kernel.gets().chomp()

    converted_loan_amount = valid_number?(loan_amount)
    break if converted_loan_amount
    puts "Please provide a valid amount of loan."
  end

  converted_loan_amount
end

def get_interest_rate
  monthly_interest_rate = ''
  converted_monthly_interest_rate = nil
  loop do
    puts "What monthly interest rate are you looking for?"
    monthly_interest_rate = Kernel.gets().chomp()

    converted_monthly_interest_rate = valid_number?(monthly_interest_rate)  
    break if converted_monthly_interest_rate
    puts "Please provide a valid monthly interest rate."
  end

  converted_monthly_interest_rate
end

def get_loan_duration
  loan_duration_in_months = ''
  converted_loan_duration_in_months = nil
  loop do
    puts "What is loan duration in months?"
    loan_duration_in_months = Kernel.gets().chomp()

    converted_loan_duration_in_months = valid_number?(loan_duration_in_months)
    break if converted_loan_duration_in_months
    puts "Please provide a valid loan duration in months."
  end
end

def get_name
  name = ''
  loop do
    name = Kernel.gets().chomp()

    break unless name.empty?()
    puts "Please enter your valid name."
  end

  name.upcase()
end

# Greeting
puts "Welcome in Mortgage / Car Loan Calculator! Enter your name:"
name = get_name
puts "Hi #{name}!"

# Mortgage car / loan calculator starts
amount_of_loan = get_loan()
amount_of_monthly_interest_rate = get_interest_rate()
amount_of_loan_duration_in_months = get_loan_duration()

# how_much_to_pay(loan_amount, monthly_interest_rate, loan_duration_in_months)

# puts "Your monthly payment is #{how_much_to_pay}"