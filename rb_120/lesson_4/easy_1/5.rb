=begin
Which of these two classes would create objects that would have 
an instance variable and how do you know?
=end

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

pizza = Pizza.new('double cheese')  # create `Pizza` object
p pizza.instance_variables          # [:@name]

kiwi = Fruit.new('kiwi')
p kiwi.instance_variables           # []

=begin
Class `Pizza` would create objects that would have an instance variable,
because only `Pizza` class has instance variable `@name` (line 14).
Class `Fruit` doesn't have an instance variable. On line 8, `name`
is a local variable. 
=end
