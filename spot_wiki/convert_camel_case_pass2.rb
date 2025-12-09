=begin
Modify the kebabize function so that it converts a camel case string into a kebab case. 
kebabize('camelsHaveThreeHumps') // camels-have-three-humps 
kebabize('camelsHave3Humps') // camels-have-humps 

p kebabize('myCamelCasedString') == 'my-camel-cased-string' 
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'


Notes: 
the returned string should only contain lowercase letters

High-level:
- Slice string
Input: string
Output: array of strings

'my|Camel|Has|3|Humps'
Algo:
- Create `result`
- `temp` empty string
- Iterate over each character of input string
  - If current char is not letter (char.to_i.to_s == char)
    - next

  - If the current char is a downcased letter
    - push current char to `temp`

  - If the current char is upcased letter
    - push `temp` to `result`
    - `temp` reassign to ''
    - push current char (downcased) to `temp`

- Return `result`

'my|Camel|Has|3|Humps'
"c"
"my", "camel"

'my|C|Camel| Cased|3|String' -> 'my-c-camel-cased-string'


- Include `-` between words (join substrings with `-`)
Input: array of strings
Output: new string
=end 

def kebabize(str)
  result = []
  temp = ''

  str.each_char do |char|
    if !char.match?(/[a-zA-Z]/)
      next
    elsif char == char.downcase
      temp << char
    elsif char == char.upcase
      result << temp
      temp = ''
      temp << char.downcase
    end
  end

  result << temp

  result.join('-')
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string' 
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps' 

p kebabize('myCCamel Cased3String') == 'my-c-camel-cased-string'
# All test cases return `true`.



## With more test cases
def kebabize(str)
  result = []
  temp = ''

  str.each_char do |char|
    if !char.match?(/[a-zA-Z]/)
      next
    elsif char == char.upcase && !temp.empty?
      result << temp
      temp = ''
    end

    temp << char.downcase
  end

  result << temp

  result.join('-')
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string' 
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps' 

p kebabize('myCCamel Cased3String') == 'my-c-camel-cased-string'
p kebabize("G4twyfe") == "gtwyfe"
p kebabize("Mznpk4r19uov7dxihaf8y5J62ceqt") == "mznpkruovdxihafy-jceqt"
p kebabize("51ho4nsGzrdek8M39B") == "hons-gzrdek-m-b"
p kebabize("dslegzoPYtkbhvuf96qxcj1r2W83a7") == "dslegzo-p-ytkbhvufqxcjr-wa"
p kebabize("tGpvah4wl3I9qJm8sdy2") == "t-gpvahwl-iq-jmsdy"
# All test cases return `true`.
