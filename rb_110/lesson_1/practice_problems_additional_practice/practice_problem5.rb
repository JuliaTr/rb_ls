# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |element, index|
  if element.include?("Be")
    puts index
  end
end

# Output: 3




# Solution from assignment:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

result = flintstones.index { |name| name[0, 2] == "Be" }
p result   # 3
