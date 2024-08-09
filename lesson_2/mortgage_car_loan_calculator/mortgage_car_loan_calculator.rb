LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('mortgage_car_loan_calculator_messages.yml')

def messages(message)
  MESSAGES[LANGUAGE][message]
end

def prompt(key, *args)
  message = messages(key) % args
  Kernel.puts("=> #{message}")
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

def how_much_to_pay(loan_amount, monthly_interest_rate, loan_duration_in_months)
  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (-loan_duration_in_months)))
end

def get_loan
  loan_amount = ''
  converted_loan_amount = nil
  loop do
    prompt('loan_amount')
    loan_amount = Kernel.gets().chomp()

    converted_loan_amount = valid_integer?(loan_amount)
    break if converted_loan_amount
    prompt('invalid_loan_amount')
  end

  converted_loan_amount
end

def get_interest_rate
  monthly_interest_rate = ''
  converted_monthly_interest_rate = nil
  loop do
    prompt('monthly_interest_rate')
    monthly_interest_rate = Kernel.gets().chomp()

    converted_monthly_interest_rate = valid_number?(monthly_interest_rate)  
    break if converted_monthly_interest_rate
    prompt('invalid_monthly_interest_rate')
  end

  converted_monthly_interest_rate_in_percentage = converted_monthly_interest_rate / 100.0
end

def get_loan_duration
  loan_duration_in_years = ''
  converted_loan_duration_in_years = nil
  loop do
    prompt('loan_duration_in_years')
    loan_duration_in_years = Kernel.gets().chomp()

    converted_loan_duration_in_years = valid_number?(loan_duration_in_years)
    break if converted_loan_duration_in_years
    prompt('invalid_loan_duration_in_years')
  end

  converted_loan_duration_in_months = converted_loan_duration_in_years * 12
end

def get_name
  name = ''
  loop do
    name = Kernel.gets().chomp()

    break unless name.empty?()
    prompt('invalid_name')
  end

  name.upcase()
end

# Greeting
prompt('welcome')
name = get_name
prompt('greeting', name)

# Mortgage car / loan calculator starts
amount_of_loan = get_loan()
puts amount_of_loan

amount_of_monthly_interest_rate = get_interest_rate()
puts amount_of_monthly_interest_rate

amount_of_loan_duration_in_months = get_loan_duration()
puts amount_of_loan_duration_in_months

monthly_payment = how_much_to_pay(amount_of_loan, amount_of_monthly_interest_rate, amount_of_loan_duration_in_months)
puts monthly_payment

# prompt('your_monthly_payment', monthly_payment}



# TESTS:
# loan_amount = 1000000 == true
# loan_amount = 100 000 == false
# loan_amount = 100,000 == false

# monthly_interest_rate = 5 == true
# monthly_interest_rate = 0.5 == true
# monthly_interest_rate = 0.05 == true
# monthly_interest_rate = .5 == false
# monthly_interest_rate = 00000000000005 == false

# loan_duration_in_months = 10 == true
# loan_duration_in_months = 10.2 == true
# loan_duration_in_months = 10,2 == false

# monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (-loan_duration_in_months)))

# monthly_payment = 100_000 * (0.01 / (1 - (1 + 0.01) ** (-120)))  # 1434.7094840258733
# monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-12)))   # 11282.541002081534
# monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-24)))   # 7247.0900752686985
# monthly_payment = 100_000 * (0.05 / (1 - (1 + 0.05) ** (-36)))   # 6043.445712047528
