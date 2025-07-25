=begin
Flatten and print this array. That is, the printed result 
should not have any subarrays, but should have all of the 
original strings and numbers from the original array:

favorites = [['Dave', 7], ['Miranda', 3] ['Jason', 11]]

Expected output:  ["Dave", 7, "Miranda", 3, "Jason", 11]
=end

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
p favorites.flatten   # ["Dave", 7, "Miranda", 3, "Jason", 11]
p favorites   # [["Dave", 7], ["Miranda", 3], ["Jason", 11]]
