# Write down whether the following expressions return true or 
# false or raise an error.

(32 * 4) >= "129"    
# comparison of Integer with String failed (ArgumentError)

847 == '847'         # => false
'847' < '846'        # => false
'847' > '846'        # => true
'847' > '8478'       # => false
'847' < '8478'       # => true
