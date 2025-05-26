## Experiments:
def letter_count(str)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  downcased_str = str.downcase

  downcased_str.chars.each_with_object({}) do |char, hash|
    if alphabet.include?(char)
      hash[char] = char.to_i + 1 # issue is here
    end
  end
end

p letter_count("Hello World!") 
# Expected {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
# {"h"=>1, "e"=>1, "l"=>1, "o"=>1, "w"=>1, "r"=>1, "d"=>1}
# Doesn't work as expected


def letter_count(str)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  downcased_str = str.downcase

  downcased_str.chars.each_with_object({}) do |char, hash|
    if alphabet.include?(char)
      hash[char] = hash[char].to_i + 1
      p hash
      p hash[char]
    end
  end
end

p letter_count("Hello World!")
# Expected: {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
# {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
# Works as expected

# Output:
# {"h"=>1}
# 1

# {"h"=>1, "e"=>1}
# 1

# {"h"=>1, "e"=>1, "l"=>1}
# 1

# {"h"=>1, "e"=>1, "l"=>2}
# 2

# {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# 1

# {"h"=>1, "e"=>1, "l"=>2, "o"=>1, "w"=>1}
# 1

# {"h"=>1, "e"=>1, "l"=>2, "o"=>2, "w"=>1}
# 2

# {"h"=>1, "e"=>1, "l"=>2, "o"=>2, "w"=>1, "r"=>1}
# 1

# {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1}
# 3

# {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
# 1

# {"h"=>1, "e"=>1, "l"=>3, "o"=>2, "w"=>1, "r"=>1, "d"=>1}
