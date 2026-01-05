=begin
Now create a smart name= method that can take just a first 
name or a full name, and knows how to set the `first_name` and 
`last_name` appropriately.
=end

## Solution
class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name)
    @first_name = first_name
    @last_name = ''
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    @first_name, @last_name = full_name.split
  end
end

bob = Person.new('Robert')
p bob.name
p bob.first_name
p bob.last_name
bob.last_name = 'Smith'
p bob.name

bob.name = "John Adams"
p bob.first_name
p bob.last_name

=begin
"Robert"
"Robert"
""
"Robert Smith"
"John"
"Adams"
=end



## Possible solution
# Refactored:
class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end
end

bob = Person.new('Robert')
p bob.name
p bob.first_name
p bob.last_name
bob.last_name = 'Smith'
p bob.name

bob.name = "John Adams"
p bob.first_name
p bob.last_name

=begin
"Robert"
"Robert"
""
"Robert Smith"
"John"
"Adams"
=end




class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parts = full_name.split     # repeats
    @first_name = parts.first   # repeats
    @last_name = parts.size > 1 ? parts.last : ''  # repeats
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parts = full_name.split         # repeats
    self.first_name = parts.first   # repeats
    self.last_name = parts.size > 1 ? parts.last : ''   # repeats
  end
end

bob = Person.new('Robert')
p bob.name
p bob.first_name
p bob.last_name
bob.last_name = 'Smith'
p bob.name

bob.name = "John Adams"
p bob.first_name
p bob.last_name

=begin
"Robert"
"Robert"
""
"Robert Smith"
"John"
"Adams"
=end
