=begin
Complete this method to return a substring starting at 
`start_idx` with the specified length. If length is 
negative return `nil`.
=end

def extract_substring(string, start_idx, length)
  string[start_idx, length]
end

p extract_substring("Launch School", 0, 6)  # "Launch"
p extract_substring("Programming", 3, 4)    # "gram"
p extract_substring("Ruby", 1, -2)          # nil
p extract_substring("Collections", 8, 5)    # "ons"
