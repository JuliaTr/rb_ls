=begin
Write a method that takes a string and returns a new string
where every other character is capitalized
=end

def alternate_caps(string)
  new_str = ''
  counter = 0
  loop do
    break if string[counter].nil?
    if counter.odd?
      new_str << string[counter]
    else
      new_str << string[counter].capitalize
    end
    counter += 1
  end

  new_str
end

p alternate_caps("ruby programming")  # "RuBy pRoGrAmMiNg"
