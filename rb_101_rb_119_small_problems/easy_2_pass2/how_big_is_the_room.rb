=begin
Build a program that asks a user for the length and width of a 
room in meters and then displays the area of the room in both 
square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Example Run:
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end

SQMETER_TO_SQFEET = 10.7639

puts 'Enter the length of the room in meters:'
room_length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
room_width = gets.chomp.to_f

room_area = (room_length * room_width).round(2)
room_area_in_feet = (room_area * SQMETER_TO_SQFEET).round(2)

puts "The area of the room is #{room_area} square meters " \
     "(#{room_area_in_feet} square feet)."

=begin
$ ruby how_big_is_the_room.rb
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end



## Further exploration:
=begin
Modify this program to ask for the input measurements in feet, 
and display the results in square feet, square inches, and 
square centimeters.
=end

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

puts 'Enter the length of the room in feet:'
room_length = gets.chomp.to_f

puts 'Enter the width of the room in feet:'
room_width = gets.chomp.to_f

room_area_in_sqfeet = (room_length * room_width).round(2)
room_area_in_sqinches = (room_area_in_sqfeet * SQFEET_TO_SQINCHES).round(2)
room_area_in_sqcentimeters = (room_area_in_sqfeet * SQFEET_TO_SQCENTIMETERS).round(2)

puts "The area of the room is #{room_area_in_sqfeet} square feet " \
     "(#{room_area_in_sqinches} square inches, " \
     "#{room_area_in_sqcentimeters} square centimeters)."

=begin
$ ruby how_big_is_the_room.rb
Enter the length of the room in feet:
10
Enter the width of the room in feet:
7
The area of the room is 70.0 square feet (10080.0 square inches, 
65032.1 square centimeters).
=end
