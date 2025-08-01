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

METER_FEET = 10.7639

puts 'Enter the length of the room in meters:'
room_length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
room_width = gets.chomp.to_f

room_area = (room_length * room_width).round(2)
room_area_in_feet = (room_area * METER_FEET).round(2)

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
