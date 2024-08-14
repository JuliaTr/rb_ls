require 'yaml'

MESSAGES = YAML.load_file('mortgage_car_loan_calculator_messages.yml')

def messages(message)
  MESSAGES[message]
end

def prompt(key, *args)
  message = messages(key) % args
  Kernel.puts("=> #{message}")
end

def clear
  system('clear')
end

def valid_number?(input)
  valid_integer?(input) || valid_float?(input)
end

def valid_integer?(input)
  input.to_i().to_s() == input
end

def valid_float?(input)
  input.to_f().to_s() == input
end

def get_name
  clear()
  prompt('welcome')
  sleep 0.8
  clear()

  name = ''
  loop do
    prompt('name')
    name = Kernel.gets().chomp().strip().upcase()
    clear()

    break unless name.empty?()
    prompt('invalid_name')
  end

  prompt('greeting', name)
  sleep 1
  name
end

def get_loan
  clear()
  loan_amount = ''
  loop do
    prompt('loan_amount', '$')
    loan_amount = Kernel.gets().chomp().delete("$").strip()
    clear()

    break unless loan_amount.empty?() ||
                 valid_number?(loan_amount) == false ||
                 loan_amount.to_f() <= 0
    prompt('invalid_loan_amount')
  end

  loan_amount.to_f()
end

def get_interest_rate
  interest_rate = ''
  loop do
    prompt('interest_rate', 5, 1.2, '%')
    interest_rate = Kernel.gets().chomp().delete("%").strip()
    clear()

    break unless interest_rate.empty?() ||
                 valid_number?(interest_rate) == false ||
                 interest_rate.to_f() <= 0
    prompt('invalid_interest_rate')
  end

  converted_interest_rate = interest_rate.to_f()
  converted_interest_rate_in_percentage = converted_interest_rate / 100
  converted_interest_rate_in_percentage / 12
end

def get_loan_duration
  loan_duration_in_years = ''
  loop do
    prompt('loan_duration_in_years')
    loan_duration_in_years = Kernel.gets().chomp().strip()
    clear()

    break unless loan_duration_in_years.empty?() ||
                 valid_number?(loan_duration_in_years) == false ||
                 loan_duration_in_years.to_f() <= 0
    prompt('invalid_loan_duration_in_years')
  end

  converted_loan_duration_in_years = loan_duration_in_years.to_f()
  converted_loan_duration_in_years * 12
end

def how_much_to_pay(loan_amount, monthly_interest_rate, loan_duration_in_months)
  loan_amount * (monthly_interest_rate / (1 -
  ((1 + monthly_interest_rate)**(-loan_duration_in_months))))
end

def calculation_messages(amount_of_loan, monthly_interest_rate,
                         amount_of_loan_duration_in_months, monthly_payment)
  prompt('summary', '$', amount_of_loan, monthly_interest_rate,
         amount_of_loan_duration_in_months)

  prompt('continue_calculation')
  answer_for_calculation = Kernel.gets().chomp()
  clear()

  if answer_for_calculation.downcase().start_with?('y')
    prompt('calculation')
    sleep 1
    clear()
    prompt('your_monthly_payment', '$', monthly_payment)
    sleep 2.5
    clear()
  end
end

def another_calculation
  prompt('question_to_perform_another_calculation')
  answer = Kernel.gets().chomp()
  clear()
  answer.downcase().start_with?('y')
end

name = get_name()
loop do
  amount_of_loan = get_loan()
  monthly_interest_rate = get_interest_rate()
  amount_of_loan_duration_in_months = get_loan_duration()
  monthly_payment = how_much_to_pay(amount_of_loan, monthly_interest_rate,
                                    amount_of_loan_duration_in_months)
  calculation_messages(amount_of_loan, monthly_interest_rate,
                       amount_of_loan_duration_in_months, monthly_payment)
  break unless another_calculation()
end
prompt('thank_you', name)
