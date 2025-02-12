# What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

## 1.
p arr.index(5)   # 3
# Returns an index (`3`) of the first value of `5`.

## 2.
p arr.index[5]   

# Returns:
# undefined method `[]' for #<Enumerator: 
# [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError)

## 3.
p arr[5]           # 8
# Returns a value of `8`, which index is `5`.
