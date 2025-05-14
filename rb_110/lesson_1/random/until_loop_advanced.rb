# Exercise (advanced)​: What will be output from this nested 
# loop structure?
outer = 1

until outer > 3
  inner = 1
  until inner > outer
    print "#{outer}: #{inner} "
    inner += 1
  end
  puts
  outer += 1
end

# Output:
# 1: 1
# 2: 1 2: 2
# 3: 1 3: 2 3: 3

=begin

Outer loop iteration 1:
until 1 > 3
  inner = 1
  until 1 > 1             2 > 1  is true 
    1: 1                    exit the inner loop
    2 = 1 + 1
  end
  puts (creates new line)
  2 = 1 + 1
end

Outer loop iteration 2:
until 2 > 3
  inner = 1 (again)
  until 1 > 2             2 > 2          3 > 2
    2: 1                    2: 2           exit the inner loop
    2 = 1 + 1               3 = 2 + 1
  end
  puts (creates new line)
  3 = 2 + 1
end

Outer loop iteration 3:
until 3 > 3
  inner = 1 (again)
  until 1 > 3             2 > 3         3 > 3          4 > 3
    3: 1                   3: 2           3: 3           exit the inner loop
    2 = 1 + 1              3 = 2 + 1      4 = 3 + 1
  end
  puts (creates new line)
  4 = 3 + 1
end

Outer loop iteration 4:
until 4 > 3
  exits loop
end

=end
