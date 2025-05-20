=begin
Exercise: Multi-Collection Manipulation
Create a method called `nested_collection_manipulator` that:
•   Takes a nested hash as an argument
•   Updates specific elements in the nested structure
•   Returns the modified hash
=end

def nested_collection_manipulator(collection)
  collection[:users][0][:skills][1] = 'JS'
  collection[:users][1][:skills][0] = 'HTML5'
  collection[:config][:theme][:colors][0] = 'BLACK'
  collection[:config][:theme][:name] = 'Dark Mode'

  collection
end

# Test cases
data = {
  users: [
    { name: 'John', skills: ['Ruby', 'JavaScript'] },
    { name: 'Jane', skills: ['HTML', 'CSS', 'Python'] }
  ],
  config: {
    enabled: true,
    theme: {
      name: 'dark',
      colors: ['black', 'gray']
    }
  }
}

result = nested_collection_manipulator(data)

p result[:users][0][:skills][1] == 'JS'          # true
p result[:users][1][:skills][0] == 'HTML5'       # true
p result[:config][:theme][:colors][0] == 'BLACK' # true
p result[:config][:theme][:name] == 'Dark Mode'  # true
