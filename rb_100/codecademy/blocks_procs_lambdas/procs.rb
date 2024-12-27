# Exercise:
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |float| float.floor }

ints = floats.collect(&round_down)
p ints    
# [1, 3, 0, 7, 11, 482]



# Exercise:
=begin
Here at the amusement park, you have to be four feet tall
or taller to ride the roller coaster. Let's use `select` on
each group to get only the ones four feet tall or taller.
=end
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
# over_4_feet = ________________

# Change these three so that they use your new `over_4_feet` Proc
can_ride_1 = group_1.select { |height| height >= 4 }
can_ride_2 = group_2.select { |height| height >= 4 }
can_ride_3 = group_3.select { |height| height >= 4 }

puts can_ride_1
# 4.1
# 5.5
# 6.1
# 4.7

puts can_ride_2
# 7.0
# 6.2
# 6.1
# 4.4
# 4.9

puts can_ride_3
# 5.5
# 5.1
# 4.3
# 4.9


# Using proc
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new { |height| height >= 4 }

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
# 4.1
# 5.5
# 6.1
# 4.7

puts can_ride_2
# 7.0
# 6.2
# 6.1
# 4.4
# 4.9

puts can_ride_3
# 5.5
# 5.1
# 4.3
# 4.9



# Exercise:
def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }
greeter(&phrase)

# Output: Hello there!



# Exercise:
hi = Proc.new { puts "Hello" }
hi.call

# Output: Hello



# Exercise:
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s)
p strings_array
# ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]



# Exercise:
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select { |x| x.is_a? Integer }
p ints
# [42, 3, 19]
