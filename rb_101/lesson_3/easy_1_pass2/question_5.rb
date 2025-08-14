# Programmatically determine if 42 lies between 10 and 100.

## Solution:
# `#cover?`:
p (10..100).cover?(42)    # true

# `#include?`:
p (10..100).include?(42)  # true

# `#between?`:
p 42.between?(10, 100)    # true
