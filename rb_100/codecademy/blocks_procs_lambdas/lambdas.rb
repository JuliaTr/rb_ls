# Exercise:
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |x| x.to_sym }
symbols = strings.collect(&symbolize)

p strings
p symbols

# Output:
# ["leonardo", "donatello", "raphael", "michaelangelo"]
# [:leonardo, :donatello, :raphael, :michaelangelo]
