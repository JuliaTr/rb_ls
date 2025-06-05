=begin
Given the following data structures, write a program that 
copies the information from the array into the empty hash 
that applies to the correct person.

Expected output:
 {
   "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
   "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
 }

PEDAC:
P: populate `contacts` hash with key-value pairs. Each key is a name.
  Each value is hash of key-value pairs of contact info of this
  person.

Input: a nested array with contact info, a hash with key-value 
        pairs
Output: a populated `contacts` hash

Rules/reqs: 
  - values from the original array should not be modified

Data structure:
nested array -> `contacts` hash

Test cases:
{
   "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
   "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
 }

High level/Algorithm:
  - populate `contacts` hash with values (keys)
  - add values to keys

=end

contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


inner_array_index = 0

contacts.each do |key, _|
  element_index = 0
  contacts[key][:email] = contact_data[inner_array_index][element_index]
  element_index += 1
  contacts[key][:address] = contact_data[inner_array_index][element_index]
  element_index += 1
  contacts[key][:phone] = contact_data[inner_array_index][element_index]

  inner_array_index += 1
end

p contacts
# {
#   "Joe Smith"=>{:email=>"joe@email.com", 
#                 :address=>"123 Main st.", :phone=>"555-123-4567"}, 
# "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", 
#                   :phone=>"123-234-3454"}
# }

# Works as expected