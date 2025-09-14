=begin
Modify the method from the previous exercise so it ignores 
non-alphabetic characters when determining whether it should 
uppercase or lowercase each letter. The non-alphabetic 
characters should still be included in the return value; 
they just don't count when toggling the desired case.
=end

def staggered_case(str, char_cap: true)
  arr = str.chars

  arr.map do |char|
    char_to_int = char.to_i

    if char == ' '
      char
    elsif char_to_int == 0
      char_cap ? char.upcase! : char.downcase!
      char_cap = !char_cap
      char
    else
      char
    end
    char
  end

  arr.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
# All test cases return `true`.



## Possible solution:
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
# All test cases return `true`.