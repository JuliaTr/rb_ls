# Exercise:
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |x| x.to_sym }
symbols = strings.collect(&symbolize)

p strings
p symbols

# Output:
# ["leonardo", "donatello", "raphael", "michaelangelo"]
# [:leonardo, :donatello, :raphael, :michaelangelo]



# Exercise:
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |x| x.is_a? Symbol }
symbols = my_array.select(&symbol_filter)

p symbols
# [:kettles, :mittens, :packages]



# Exercise:
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda { |_, value| value < "M" }
a_to_m = crew.select(&first_half)

p a_to_m
# {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}
