=begin
Write a method that takes two Arrays as arguments, and returns 
an Array that contains all of the values from the argument 
Arrays. There should be no duplication of values in the 
returned Array, even if there are duplicates in the original 
Arrays.
=end

def merge(arr1, arr2)
  arr3 = arr1 + arr2
  arr3.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]  # true


## Experiments:
arr1 = [1, 3, 5]
arr2 = [3, 6, 9]
arr3 = arr1 + arr2
p arr3    # [1, 3, 5, 3, 6, 9]
p arr1    # [1, 3, 5]



## Possible solution:
def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]  # true
