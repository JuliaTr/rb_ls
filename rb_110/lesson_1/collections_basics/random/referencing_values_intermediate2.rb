=begin
Exercise (ntermediate)​: Given the following data structure, write code to:
   a) Access the value 'high'
   b) Add a new key-value pair :mood => 'happy' to the hash where the 
    current value is [[:status, 'busy']]
   c) Change the value of 'busy' to 'available'
=end

complex_hash = {
  settings: {
    user: {
      profile: {
        priority: 'high',
        notifications: true
      },
      preferences: [[:status, 'busy'], [:sound, 'off']]
    }
  }
}

# a) Access the value 'high':
# p complex_hash[:settings][:user][:profile][:priority]  # "high"


# b) Add a new key-value pair `:mood => 'happy'` to the hash where the 
#     current value is [[:status, 'busy']]
p complex_hash[:settings][:user][:preferences] 
# [[:status, "busy"], [:sound, "off"]]

p complex_hash[:settings][:user][:preferences][2] = {:mood => 'happy'}
# {:mood=>"happy"}
p complex_hash[:settings][:user][:preferences][2].to_a
# [[:mood, "happy"]]

p complex_hash[:settings][:user][:preferences]
# [[:status, "busy"], [:sound, "off"], {:mood=>"happy"}]

=begin
The `Hash#to_a` returns a new array, which doesn't mutate the original one.

irb(main):001:0> h = { :name => 'Yuliia' }
=> {:name=>"Yuliia"}
irb(main):002:0> h.to_a
=> [[:name, "Yuliia"]]
irb(main):003:0> h
=> {:name=>"Yuliia"}
=end


# Experiments:
arr = [[1, 2], [3, 4]]
p arr[2] = [5, 6]  # [5, 6]
p arr              # [[1, 2], [3, 4], [5, 6]]
