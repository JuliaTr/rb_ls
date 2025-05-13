=begin
Exercise: Write code that changes the array below so that all 
of the names are shortened to just the first three characters. 
Do not create a new array.
=end
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# expected output: ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]

flintstones.map! { |name| name.slice(0, 3) }
p flintstones   # ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]



# Solution from assignment:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] }
p flintstones   # ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]
