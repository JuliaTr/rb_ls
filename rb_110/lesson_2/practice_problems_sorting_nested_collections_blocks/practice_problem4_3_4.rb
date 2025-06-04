=begin
Practice Problem 4
For each of these collection objects where the value `3` occurs, 
demonstrate how you would change this to `4`.
=end

## Example 3:
hsh1 = {first: [1, 2, [3]]}

hsh1[:first][2][0] = 4
p hsh1  # {:first=>[1, 2, [4]]}



## Example 4:
hsh2 = {
  ['a'] => {
    a: ['1', :two, 3], 
    b: 4
  },
  'b' => 5
}

hsh2[["a"]][:a][2] = 4
p hsh2  # {["a"]=>{:a=>["1", :two, 4], :b=>4}, "b"=>5}
