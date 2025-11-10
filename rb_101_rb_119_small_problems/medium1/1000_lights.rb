=begin
You have a bank of switches before you, numbered from 1 to n. 
Each switch is connected to exactly one light that is initially 
off. You walk down the row of switches and toggle every one 
of them. You go back to the beginning, and on this second 
pass, you toggle switches 2, 4, 6, and so on. On the third 
pass, you go back again to the beginning and toggle switches 
3, 6, 9, and so on. You repeat this process and keep going 
until you have been through n repetitions.

Write a method that takes one argument, the total number of 
switches, and returns an Array that identifies which lights 
are on after n repetitions.

Example with `n` = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The 
return value is `[1, 4]`.

With 10 lights, 3 lights are left on: lights 1, 4, and 9. 
The return value is `[1, 4, 9]`.

___________________________________________________________

PEDAC
P 
Write a method which return a array of the number of light 
which is turned on at the last iteration.

Rules/ reqs:
- the 1st light is always on
- the number of rounds is the same as the number of integers 
  in the array
- on the first round all lights are on
- on the second round we (tap) on each second light (so, they
  become turned off)
- on the next rounds we tap on the 3rd, 4th, 5th ... lights
- depending on if they are on or off they will change their state

Notes (rounds break down):
We have 5 lights.
round 1: [1, 2, 3, 4, 5]
round 2: [1,  , 3,  , 5]    (white spaces mean lights are off)
round 3: [1,  ,  ,  , 5]    (tap on every 3rd light - indice 2)
round 4: [1,  ,  , 4, 5]    (tap on every 4th light, so it was off, now it's on)
round 5: [1,  ,  , 4,  ]    (tap on every 5the light, so it was on, now it's off)
=> [1, 4]

We have 10 lights.
round 1: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]   
round 2: [1,  , 3,  , 5,  , 7,  , 9,   ]   (every 2nd light)
round 3: [1,  ,  ,  , 5, 6, 7,  ,  ,   ]   (every 3rd light)
round 4: [1,  ,  , 4, 5, 6, 7, 8,  ,   ]   (every 4th light)
round 5: [1,  ,  , 4,  , 6, 7, 8,  , 10]   (every 5th light)
round 6: [1,  ,  , 4,  ,  , 7, 8,  , 10]   (every 6th light)
round 7: [1,  ,  , 4,  ,  ,  , 8,  , 10]   (every 7th light)
round 8: [1,  ,  , 4,  ,  ,  ,  ,  , 10]   (every 8th light)
round 9: [1,  ,  , 4,  ,  ,  ,  , 9, 10]   (every 9th light)
round 10: [1,  ,  , 4,  ,  ,  ,  , 9,  ]   (every 10th light)

D
Input: integer
Output: array of integers
Intermediate: 
- array to store integers from 1 to input integer
- range to iterate from 0 to input integer

High-level:
- All lights on
- When we do rounds if a light is on, we make it off and vice versa

Algorithm:
- Create an array of all lights are on
  Note:
  - Create an empty array
  - Push integers from 1 upto number of rounds (input integer)
- Create a new array to store lights which will be on on each round
- Loop input integer times:
  - Push every second integer (starting from 1st) from array of 
    lights to a new array
  - Every nth integer from array of lights 
    - If it doesn't exist
      - push to the new array
    - If it doesn't exist
      - remove from the new array
- Return new array
=end


## Possible solution:
# Initialize the lights hash:
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# Return lidt of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# Toggle every nth light in lights hash
def toggle_every_nth_light!(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

def turn_lights(number)
  lights = initialize_lights(number)

  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light!(lights, iteration_number)
  end

  on_lights(lights)
end

p turn_lights(5) == [1, 4]
p turn_lights(10) == [1, 4, 9]
p turn_lights(1000)
# [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 
# 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 
# 841, 900, 961]



## Experiments:
def return_array_integers(number)
  arr = []
  number.times { |n| arr << n + 1 }
  arr
end

# # The same as:
# def return_array_integers(number)
#   (1..number).to_a
# end

p return_array_integers(5)   # [1, 2, 3, 4, 5]
p return_array_integers(10)  # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
