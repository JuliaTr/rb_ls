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


# Solution 2:
def select_countries(hsh)
  sub_set = {}
  hsh.each_key do |country|
    if country[0] == 'B'
      sub_set[country] = hsh[country]
    end
  end
  sub_set
end

p select_countries(countries_and_capitals)
# {"Belgium"=>"Brussels", "Barbados"=>"Bridgetown",
# "Bolivia"=>"La Paz", "Brazil"=>"Brazilia"}




# Don't solve the problem:
# Solution 1:
result = countries_and_capitals.select do |_, country| 
          country[0] == 'B'
        end
p result
# {"Belgium"=>"Brussels", "Barbados"=>"Bridgetown", 
# "Brazil"=>"Brazilia"}


# Experiment to debug:
result = countries_and_capitals.select do |key, _|
          key[0] == 'B'
        end

p result
# {"Belgium"=>"Brussels", "Barbados"=>"Bridgetown", 
# "Bolivia"=>"La Paz", "Brazil"=>"Brazilia"}



# Solution 2:
def begins_with_b(string)
  string[0] == 'B'
end

result = countries_and_capitals.find_all do |country, capial|
          begins_with_b(country)
        end

p result 
# [["Belgium", "Brussels"], ["Barbados", "Bridgetown"], 
# ["Bolivia", "La Paz"], ["Brazil", "Brazilia"]]


# Experiment to debug:
def begins_with_b(string)
  string[0] == 'B'
end

result = countries_and_capitals.select do |key, _|
          begins_with_b(key)
        end

p result 
# {"Belgium"=>"Brussels", "Barbados"=>"Bridgetown", 
# "Bolivia"=>"La Paz", "Brazil"=>"Brazilia"}
