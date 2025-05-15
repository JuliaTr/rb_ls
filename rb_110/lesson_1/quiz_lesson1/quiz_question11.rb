# Examples of transformation:
## Example 1:
def star_method(stars)
  arr = []

  stars.each do |star|
    arr.push(star.upcase)
  end

  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)
p stars_2   
# ["SIRIUS", "RIEGEL", "VEGA","POLARIS", "ALTAIR"]



## Example 2:
def star_method(stars)
  arr = []
  counter = 0

  until counter == stars.size do
    arr << stars[counter][0, 3]

    counter += 1
  end

  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)
p stars_2   
# ["Sir", "Rig", "Veg", "Polar", "Alt"]
