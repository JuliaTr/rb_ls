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



# Use the `loop` iterator to `print` out the string "Ruby!" 30 times.
# I'll print 10 times as the output is very long.
counter = 1

loop do
  print "#{counter}: Ruby! "
  break if counter == 10
  counter += 1
end

# Output:
# 1: Ruby! 2: Ruby! 3: Ruby! 4: Ruby! 5: Ruby! 6: Ruby! 7: Ruby! 8: Ruby! 9: Ruby! 10: Ruby!
