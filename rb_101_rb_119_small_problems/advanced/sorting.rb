## Experiments with sorting manually: 

def sort(arr)
  return arr if arr.size < 2
  return arr if arr.uniq.size == 1

  dup_arr = arr.dup
  result = []

  0.upto(arr.size - 1) do |index|
    result << dup_arr.min
    dup_arr.delete_at(dup_arr.index(dup_arr.min))
  end

  result
end

p sort([])    # []
p sort([1])   # [1]
p sort([3, 1, 2, 1]) == [1, 1, 2, 3]
p sort([5, 5, 5]) == [5, 5, 5]

p sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p sort([5, 3]) == [3, 5]
p sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p sort([9, 2, 7, 6, 8, 5, 0, 1]) == [0, 1, 2, 5, 6, 7, 8, 9]

p sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
# All test cases return `true`.



# Won't work with `[3, 1, 2, 1]`, because `#delete` deletes all 
# occurrences:
def sort(arr)
  dup_arr = arr.dup
  result = []

  while dup_arr.any?
    result << dup_arr.min
    dup_arr.delete(dup_arr.min)
  end

  result
end

p sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p sort([5, 3]) == [3, 5]
p sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p sort([9, 2, 7, 6, 8, 5, 0, 1]) == [0, 1, 2, 5, 6, 7, 8, 9]

p sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
# All test cases return `true`.
