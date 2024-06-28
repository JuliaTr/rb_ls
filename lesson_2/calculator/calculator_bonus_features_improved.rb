LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message)
  MESSAGES[LANGUAGE][message]
end

def prompt(key, *args)
  message = messages(key) % args
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
  input.to_f().to_s() == input
end

def zero?(input)
  input.to_i() == 0
end

def number_integer_or_float(number)
  if float?(number)
    number.to_f()
  else
    number.to_i()
  end
end

def what_name(name)
  loop do
    name = Kernel.gets().chomp()
  
    break unless name.empty?()
    prompt('valid_name')
  end

  name.upcase()
end

def what_number(number, number_message)
  loop do
    number_message
    number = Kernel.gets().chomp()

    break if number?(number)
    prompt('invalid_number')
  end

  number_integer_or_float(number)
end

def what_operation(operator)
  loop do
    operator = Kernel.gets().chomp()

    break if %w(1 2 3 4).include?(operator)
    prompt('operation_options_error')
  end

  operator
end

def operation_message(operator)
  case operator
  when '1' then 'adding_operation'
  when '2' then 'subtracting_operation'
  when '3' then 'multiplying_operation'
  when '4' then 'dividing_operation'
  end
end

def calculate_result(operator, first_number, second_number)
  case operator
  when '1'
    first_number + second_number
  when '2'
    first_number - second_number
  when '3'
    first_number * second_number
  when '4'
    first_number.to_f() / second_number.to_f()
  end
end

def another_operation
  prompt('question_to_perform_another_operation')
  answer = Kernel.gets().chomp()
  answer.downcase().start_with?('y')
end


# Calculator starts
clear()

prompt('welcome')

name = ''
name = what_name(name)

clear()

prompt('greeting', name)

sleep 1

clear()

# Main loop for calculation
loop do
  number1 = ''
  first_number = what_number(number1, prompt('first_number'))

  chosen_operator = ''
  second_number = ''

    loop do
      number2 = ''
      second_number = what_number(number2, prompt('second_number'))

      prompt('operation_options')
      operator = ''
      chosen_operator = what_operation(operator)

      break unless chosen_operator == '4' && zero?(second_number)
      prompt('zero_error')
    end

  prompt(operation_message(chosen_operator))

  sleep 1
  
  result = calculate_result(chosen_operator, first_number, second_number)
  prompt('result', result)

  sleep 2

  clear()

  break unless another_operation()

  clear()
end

clear()

prompt('thank_you')
