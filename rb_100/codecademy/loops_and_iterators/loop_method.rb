i = 20

loop do
  i -= 1
  next if i.odd?
  puts "#{i}"
  break if i <= 0
end

# Output:
# 18
# 16
# 14
# 12
# 10
# 8
# 6
# 4
# 2
# 0
