LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message)
  MESSAGES[LANGUAGE][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def clear
  system('clear')
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i().to_s() == input
end

def float?(input)
  input.to_f.to_s == input
end

def zero?(input)
  input.to_i().to_s() != "0"
end

def what_name(name)
  loop do
    name = Kernel.gets().chomp()
  
    break unless name.empty?()
    prompt(messages('valid_name'))
  end

  name
end

def what_number(number, number_message)
  loop do
    number_message
    number = Kernel.gets().chomp()

    break if number?(number)
    prompt(messages('invalid_number'))
  end

  number
end

def number_integer_or_float(number)
  if float?(number)
    number.to_f
  else
    number.to_i
  end
end

def what_operation(operator)
  loop do
    operator = Kernel.gets().chomp()

    break if %w(1 2 3 4).include?(operator)
    prompt(messages('operation_options_error'))
  end

  operator
end

def choose_operation_message(operator)
  case operator
  when '1' then 'adding_operation'
  when '2' then 'subtracting_operation'
  when '3' then 'multiplying_operation'
  when '4' then 'dividing_operation'
  end
end

def calculate_result(operator, first_number_converted, second_number_converted)
  case operator
  when '1'
    first_number_converted + second_number_converted
  when '2'
    first_number_converted - second_number_converted
  when '3'
    first_number_converted * second_number_converted
  when '4'
    first_number_converted.to_f / second_number_converted.to_f
  end
end


# Calculator starts
clear

prompt(messages('welcome'))

name = ''
name = what_name(name)

clear

prompt(messages('greeting') + "#{name}!")

sleep 1

clear

# Main loop for calculation
loop do
  number1 = ''
  first_number = what_number(number1, prompt(messages('first_number')))
  first_number_converted = number_integer_or_float(first_number)

  number2 = ''
  second_number = ''
  loop do
    second_number = what_number(number2, prompt(messages('second_number')))

    break if zero?(second_number)
    prompt(messages('zero_error'))
  end

  second_number_converted = number_integer_or_float(second_number)

  prompt(messages('operation_options'))

  operator = ''
  operator = what_operation(operator)
  prompt(messages(choose_operation_message(operator)))

  sleep 1

  prompt(messages('result') + "#{calculate_result(operator, first_number_converted, second_number_converted)}!")

  sleep 2

  clear

  prompt(messages('question_to_perform_another_operation'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

  clear
end

clear

prompt(messages('thank_you'))
