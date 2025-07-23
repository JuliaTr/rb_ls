=begin
You want to have a small script delivering motivational 
quotes, but with the following code you run into a very 
common error message: `no implicit conversion of nil into String (TypeError)`. 
What is the problem and how can you fix it?
=end

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    "Do not worry about your difficulties in Mathematics." \
    "I can assure you mine are still greater."
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

=begin
Confucius says:
confucius_says.rb:24:in `+': no implicit conversion of nil into String (TypeError)
=end


## Bug fix:

# Option 1:
def get_quote(person)
  case person
  when 'Yoda'
    'Do. Or do not. There is no try.'
  when 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  when 'Einstein'
    "Do not worry about your difficulties in Mathematics." \
    "I can assure you mine are still greater."
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# Output:
# Confucius says:
# "I hear and I forget. I see and I remember. I do and I understand."


# Option 2:
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    "Do not worry about your difficulties in Mathematics." \
    "I can assure you mine are still greater."
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# Output:
# Confucius says:
# "I hear and I forget. I see and I remember. I do and I understand."


# Option 3:
def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return "Do not worry about your difficulties in Mathematics." \
           "I can assure you mine are still greater."
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# Output:
# Confucius says:
# "I hear and I forget. I see and I remember. I do and I understand."
