# =begin
# In the `make_one_year_older` method we have used `self`. What is 
# another way we could write this method so we don't have to use 
# the `self` prefix?
# =end

# class Cat
#   attr_accessor :type, :age

#   def initialize(type)
#     @type = type
#     @age = 0
#   end

#   def make_one_year_older
#     self.age += 1   # call setter method inside instance method
#   end
# end

# cat1 = Cat.new('tabby')
# p cat1.make_one_year_older    # 1



# ## Possible solution
# class Cat
#   attr_accessor :type, :age

#   def initialize(type)
#     @type = type
#     @age = 0
#   end
  
#   def make_one_year_older
#     @age += 1
#   end
# end

# cat1 = Cat.new('tabby')
# p cat1.make_one_year_older   # 1



## Experiments
# with `self`
class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name
  end
end

cat1 = Cat.new('Sophie')
cat1.rename('Chloe')
p cat1.name             # "Chloe"
