=begin
Using the following code, add a method named `share_secret` that 
prints the value of `@secret` when invoked.
=end

class Person
  attr_writer :secret

  def share_secret
    puts @secret
  end

  private

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret
# Shh.. this is a secret!


## Experiments
class Person
  attr_writer :secret

  private

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.secret
=begin
private method `secret' called for #<Person:0x000000010e7e57e8 
@secret="Shh.. this is a secret!"> (NoMethodError)
=end
