# What would be the return value of the following method invocation?
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"   # "yes" == "no"   => false
end

p foo        # "yes"
p bar(foo)   # "no"
