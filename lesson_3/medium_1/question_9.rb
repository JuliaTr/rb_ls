# What is the return value of the `bar(foo)` method invocation?

def foo(param = "no")
  "yes"
end

p foo          

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)     # returns "no"




## Experiments:

def foo(param = "no")
  "yes"
end

p foo                          # returns "yes"

# The return value is `"yes"' because the method returns the evaluated result of the last line executed.
# This is the last and the only line of the method.  
# Also, the parameter `param` is not used, as no arguments are passed into the `foo` method invocation.


def foo(param)
  "yes"
end

p foo 
# `foo': wrong number of arguments (given 0, expected 1) (ArgumentError)


def foo(param)
  "yes"
end

p foo("no")      # returns "yes"


def foo(param)
  param
  "yes"
end

p foo("no")        # returns "yes"


def foo(param)
  "yes"
  param
end

p foo("no")          # returns "no"


def foo(param = "no")
  param = "yes"
end

p foo("hi")            # returns "yes"


def foo(param = "no")
  param
end

p foo("yes")           # returns "yes"
