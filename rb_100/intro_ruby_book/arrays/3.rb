# How do you return the word "example" from the following array?
arr = [["test", "hello", "world"], ["example", "mem"]]


# Solution:
arr = [["test", "hello", "world"], ["example", "mem"]]

## Option 1:
p arr[1][0]        # "example"

## Option 2:
p arr.last.first   # "example"
