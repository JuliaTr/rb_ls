flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
result = flavors.reject { |flavor| puts flavor }

p result

# Output:
# chocolate
# strawberry
# mint
# vanilla
# ["chocolate", "strawberry", "mint", "vanilla"]

# `reject` considers only the truthiness of the block's 
# return value
