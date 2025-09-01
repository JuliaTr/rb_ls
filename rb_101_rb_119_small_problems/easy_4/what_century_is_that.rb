=begin
Write a method that takes a year as input and returns the 
century. The return value should be a string that begins with 
the century number, and ends with `st`, `nd`, `rd`, or `th` as 
appropriate for that number.

New centuries begin in years that end with `01`. So, the years 
1901-2000 comprise the 20th century.

_______________________________________________________________

PEDAC
Rules:
- for defining a century
  - the integers should be from 01 to 999 after the first digit 
    in the year to define the current century + 1
  - from 1 to 100 years is the 1st century
  - if first 2 digits + 1 (ex: 2001 -> 21 (20 + 1))
  - if the integer has 5 digits, then the first 3 digits + 1
    (ex: 10103 -> 102 (101 + 1))

- for define the right ending
  - `st` is concatenated when the last digit of the century is `1`
    and the preceding digit isn't `1` or nothing (ex: 21st, 1st)
  - `nd` is concatenated when last digit of the century is `2`
    and the preceding digit isn't `1` or nothing (ex: 102nd, 2nd)
  - `rd` is concatenated when last digit of the century is `3`
    and the preceding digit isn't `1` or nothing (ex: 3rd)
  - the rest is `th`

High-level:
- define a century
- define the right ending
=end

def what_century(int)
  int_to_array = int.to_s.chars
  int_length = int.to_s.length

  if int.between?(1, 100)
    1
  elsif int_length == 3
    int_to_array[0].to_i + 1
  elsif int_to_array[1..3].all? { |digit| digit == '0' } && int_length == 4
    int_to_array[0..1].join.to_i
  elsif int_length == 4
    int_to_array[0..1].join.to_i + 1
  elsif int_length == 5
    int_to_array[0..2].join.to_i + 1
  end
end

def century(int)
  century_str = what_century(int).to_s
  century_array = century_str.chars

  ending = if century_array[-2] == '1'
             'th'
           elsif century_array[-1] == '1'
             'st'
           elsif century_array[-1] == '2'
             'nd'
           elsif century_array[-1] == '3'
             'rd'
           else
             'th'
           end

  century_str + ending
end

p century(2000) == '20th'    # true
p century(2001) == '21st'    # true
p century(1965) == '20th'    # true
p century(256) == '3rd'      # true
p century(5) == '1st'        # true
p century(10103) == '102nd'  # true
p century(1052) == '11th'    # true
p century(1127) == '12th'    # true
p century(11201) == '113th'  # true



# Experiments:
p 2000.to_s   # "2000"


def century
  str = ''
  str << 1
end

p century   # "\u0001"


=begin
irb(main):001:0> 2000 % 100
=> 0
irb(main):002:0> 2001 % 100
=> 1
irb(main):003:0> 11201 % 100
=> 1
irb(main):004:0> 11 % 100
=> 11
=end



## Possible solution:
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'     # true
p century(2001) == '21st'     # true
p century(1965) == '20th'     # true
p century(256) == '3rd'       # true
p century(5) == '1st'         # true
p century(10103) == '102nd'   # true
p century(1052) == '11th'     # true
p century(1127) == '12th'     # true
p century(11201) == '113th'   # true
