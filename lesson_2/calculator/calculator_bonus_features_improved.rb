LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang ='en')
  MESSAGES[lang][message]
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
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

# Calculator itself
clear

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

clear

prompt(messages('greeting', LANGUAGE) + "#{name}!")

sleep 2

clear

# Main loop for calculation
loop do
  number1 = ''
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  prompt(messages('operation_options', LANGUAGE))

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operation_options_error', LANGUAGE))
    end
  end

  operation_message = case operator
                      when '1' then 'adding_operation'
                      when '2' then 'subtracting_operation'
                      when '3' then 'multiplying_operation'
                      when '4' then 'dividing_operation'
                      end

  prompt(messages(operation_message, LANGUAGE))

  sleep 2

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt(messages('result', LANGUAGE) + "#{result}!")

  sleep 4

  clear

  prompt(messages('question_to_perform_another_operation', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

  clear
end

clear

prompt(messages('thank_you', LANGUAGE))
