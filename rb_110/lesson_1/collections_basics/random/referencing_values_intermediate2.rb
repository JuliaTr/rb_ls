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
p complex_hash[:settings][:user][:profile][:priority]  # "high"
