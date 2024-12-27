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
