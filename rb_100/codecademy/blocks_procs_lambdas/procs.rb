# Exercise:
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new { |float| float.floor }

ints = floats.collect(&round_down)
p ints    
# [1, 3, 0, 7, 11, 482]