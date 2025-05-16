=begin
Exercise:
Given the following hash which contains keys representing 
countries and values representing the capital cities of those 
countries, return a new hash containing all of the key-value 
pairs where the country begins with the letter 'B'.
=end

countries_and_capitals = {
  'France' => 'Paris',
  'Belgium' => 'Brussels',
  'Morocco' => 'Rabat',
  'Barbados' => 'Bridgetown',
  'Peru' => 'Lima',
  'Bolivia' => 'La Paz',
  'Brazil' => 'Brazilia'
}

# Solution 1:
result = countries_and_capitals.each_with_object({}) do |(k, v), obj|
          obj[k] = v if k.chr == 'B'
        end

p result
# {"Belgium"=>"Brussels", "Barbados"=>"Bridgetown",
# "Bolivia"=>"La Paz", "Brazil"=>"Brazilia"}
