=begin
What do you expect to happen when the greeting variable is 
referenced in the last line of the code below?
=end

if false
  greeting = "hello world"
end

p greeting    # nil





## Experiments:
p a  # undefined local variable or method `a' for main:Object (NameError)



if true
  a = 'hello world'
end

p a   # "hello world"



if true
  a
end

p a    # undefined local variable or method `a' for main:Object (NameError)



if false
  a
end

p a   # undefined local variable or method `a' for main:Object (NameError)
