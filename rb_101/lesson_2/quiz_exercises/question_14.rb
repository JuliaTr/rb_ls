=begin
Change the code to output `hi there`.
=end

def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting  # hi



## Solutions:
# Option 1:
def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
greeting = extend_greeting(greeting)

puts greeting   # hi there



# Option 2:
def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
puts extend_greeting(greeting)   # hi there



# Option 3:
def extend_greeting(greeting)
  greeting << " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting     # hi there
