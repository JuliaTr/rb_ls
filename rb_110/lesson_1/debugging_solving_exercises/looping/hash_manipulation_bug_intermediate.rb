=begin
Exercise: Hash Manipulation Bug (Intermediate)
This code is supposed to select only people over 30 from a 
hash, but something's wrong.
=end

people = {
  "John" => 28,
  "Linda" => 45,
  "Michatl" => 32,
  "Jessica" => 29 
}

def select_over_30(people_hash)
  selected = {}

  people_hash.each do |name, age|
    if age > 30
      selected[age] = name
    end
  end

  selected
end

older_people = select_over_30(people)
p older_people # Expected: {"Linda" => 45, "Michael" => 32}
# {45=>"Linda", 32=>"Michatl"}


## Bug fix:
people = {
  "John" => 28,
  "Linda" => 45,
  "Michael" => 32,
  "Jessica" => 29
}

def select_over_30(people_hash)
  selected = {}

  people_hash.each do |name, age|
    if age > 30
      selected[name] = age
    end
  end

  selected
end

older_people = select_over_30(people)
p older_people  # {"Linda" => 45, "Michael" => 32}
# Works as expected
