require 'yaml'
MESSAGES = YAML.load_file('mortgage_car_loan_calculator_messages.yml')

def messages(message)
  MESSAGES[message]
end

def prompt(key, *args)
  message = messages(key) % args
  Kernel.puts("=>#{message}")
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
  converted_loan_amount = nil
  loop do
    prompt('loan_amount', '$')
    loan_amount = Kernel.gets().chomp().strip()
    clear()

    break unless loan_amount.empty?() || valid_integer?(loan_amount) == false || loan_amount.to_i() <= 0
    prompt('invalid_loan_amount')
  end

  converted_loan_amount = loan_amount.to_i()
end

def get_interest_rate
  interest_rate = ''
  converted_interest_rate = nil
  loop do
    prompt('interest_rate', 5, 1.2, '%')
    interest_rate = Kernel.gets().chomp().strip()
    clear()

    break unless interest_rate.empty?() || valid_number?(interest_rate) == false || interest_rate.to_f() <= 0
    prompt('invalid_interest_rate')
  end

  converted_interest_rate = interest_rate.to_f()
  converted_interest_rate_in_percentage = converted_interest_rate / 100
  monthly_interest_rate = converted_interest_rate_in_percentage / 12
end

def get_loan_duration
  loan_duration_in_years = ''
  converted_loan_duration_in_years = nil
  loop do
    prompt('loan_duration_in_years')
    loan_duration_in_years = Kernel.gets().chomp().strip()
    clear()
  
    break unless loan_duration_in_years.empty?() || valid_number?(loan_duration_in_years) == false || loan_duration_in_years.to_f() <= 0
    prompt('invalid_loan_duration_in_years')
  end

  converted_loan_duration_in_years = loan_duration_in_years.to_f()
  amount_of_loan_duration_in_months = converted_loan_duration_in_years * 12
end

def how_much_to_pay(loan_amount, monthly_interest_rate, loan_duration_in_months)
  monthly_payment = loan_amount * 
                    (monthly_interest_rate / 
                    (1 - (1 + monthly_interest_rate) ** (-loan_duration_in_months)))
end

def calculation_messages(amount_of_loan, monthly_interest_rate, amount_of_loan_duration_in_months, monthly_payment)
  prompt('summary', '$', amount_of_loan, monthly_interest_rate, amount_of_loan_duration_in_months)
  prompt('calculation')
  sleep 2
  clear()
  prompt('your_monthly_payment','$', monthly_payment)
  sleep 2
  clear()
end

def another_calculation

  prompt('question_to_perform_another_calculation')
  answer = Kernel.gets().chomp()
  clear()
  answer.downcase().start_with?('y')
end

name = get_name
loop do
  amount_of_loan = get_loan()            
  monthly_interest_rate = get_interest_rate()
  amount_of_loan_duration_in_months = get_loan_duration()
  monthly_payment = how_much_to_pay(amount_of_loan, monthly_interest_rate, amount_of_loan_duration_in_months)
  calculation_messages(amount_of_loan, monthly_interest_rate, amount_of_loan_duration_in_months, monthly_payment)
  break unless another_calculation()
end
prompt('thank_you', name)





=begin
## INPUT USE CASES:
# come in strings

### NAME

name = "kjhgv"                  == true            # any letter
name = "     kjhggd"            == true            # white space will be stripped
name = "jhggg      "            == true            # white space will be stripped
name = "8776"                   == true            # any number
name = "4.5"                    == true            # any float
name = "4,5"                    == true            # any float
name = "     12445"             == true            # white space will be stripped
name = "98765      "            == true            # white space will be stripped
name = "!@#$%^&*())_+""         == true            # any symbol
name = "-4"                     == true            # any negative integer

name = ""                       == false
name = "     "                  == false           # white space will be stripped



### LOAN AMOUNT

loan_amount = "1000000"         == true
loan_amount = "1"               == true
loan_amount = "9    "           == true             # white space will be stripped
loan_amount = "    9"           == true             # white space will be stripped

loan_amount = "100 000"         == false           
loan_amount = "100,000"         == false
loan_amount = "0"               == false
loan_amount = "-1"              == false            # any negative integer
loan_amount = "1.2"             == false            # any float

loan_amount = "$10000"          == false            
loan_amount = "$ 10000"         == false            

loam_amount = "     "           == false            # white space will be stripped  
loan_amount = ""                == false            
loan_amount = "n"               == false            # any letter
loan_amount = "n    "           == false             
loan_amount = "!@#$%^&*())_+""  == false            # any symbol or symbol with integer/float/letter/white space



### INTEREST RATE

interest_rate = "5"                == true
interest_rate = "0.5"              == true
interest_rate = "0.05"             == true             

interest_rate = "%5"               == false          
interest_rate = "% 5"              == false          
interest_rate = ".5"               == false
interest_rate = "00000000000005"   == false
interest_rate = "0"                == false
interest_rate = "0.00001"          == false

interest_rate = "     "            == false            # white space will be stripped
interest_rate = ""                 == false            
interest_rate = "n"                == false            # any letter
interest_rate = "n    "            == false            
interest_rate = "-1"               == false            # any negative integer
interest_rate = "!@#$%^&*())_+""   == false            # any symbol or symbol with integer/float/letter/white space



### LOAN DURATION IN YEARS

loan_duration_in_years = "10"               == true
loan_duration_in_years = "10.2"             == true
loan_duration_in_years = "0.00001"          == true

loan_duration_in_years = "10,2"             == false
loan_duration_in_years ".5"                 == false
loan_duration_in_years = "00000000000005"   == false
loan_duration_in_years = "0"                == false

loan_duration_in_years = "     "            == false            # white space will be stripped
loan_duration_in_years = ""                 == false            
loan_duration_in_years = "n"                == false            # any letter
loan_duration_in_years = "n    "            == false            
loan_duration_in_years = "-1"               == false            # any negative integer
loan_duration_in_years = "!@#$%^&*())_+""   == false            # any symbol or symbol with integer/float/letter/white space
=end
