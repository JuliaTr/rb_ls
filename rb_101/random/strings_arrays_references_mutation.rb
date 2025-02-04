# strings, arrays, references, mutation

# Snippet 1
def modify_string(str)
  str[0] = 'J'
  # p str                 # "Juby"
  str << 'ava'          # "Jubyava"
end

text = "Ruby"
p text.object_id        # 60

modify_string(text)     # "Jubyava"

puts text               # Jubyava
puts text.object_id     # 60

new_text = text[0, 2]
puts new_text           # Ju
puts new_text.object_id   # 80

text[0].downcase!      # "j"

puts text              # Jubyava
puts new_text          # Ju

# In `text[0, 2]` `2` is length.
