=begin
The output of the code below tells you that you have around 
$70. However, you expected your bank account to have about 
$238. What did we do wrong?
=end

# Financially, you started the year with a clean slate.
balance = 0

# Here's what you earned and spent during the first three months.
january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

def calculate_balance(month)
  plus = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance   # 70.59999999999991



## Bug fix:
balance = 0

# Here's what you earned and spent during the first three months.
january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

def calculate_balance(month)
  plus = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

# Test cases:
puts calculate_balance({ income: [], expenses: [] }) == 0           # true
puts calculate_balance({ income: [100], expenses: [] }) == 100      # true
puts calculate_balance({ income: [], expenses: [100] }) == -100     # true
puts calculate_balance({ income: [100], expenses: [50] }) == 50     # true
puts calculate_balance({ income: [4, 3], expenses: [2, 1] }) == 4   # true

# Option 1:
balance_january = calculate_balance(january)   # 246.9000000000001
balance_february = calculate_balance(february)  # -79.20000000000005
balance_march = calculate_balance(march)     # 70.59999999999991

balance = balance_january + balance_february + balance_march
p balance  # 238.29999999999995


# Option 2:
[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance  # 238.29999999999995
