=begin
Examine the following Ruby code. Which of the following code 
snippets can replace the "omitted code" comment to produce the 
indicated result.
=end

# Works as expected:
class Person
  attr_writer :first_name, :last_name

  def full_name
    @first_name + ' ' + @last_name
  end
end

mike = Person.new
mike.first_name = 'Michael'
mike.last_name = 'Garcia'
p mike.full_name  # "Michael Garcia"




# Won't wonk:
# Because there are no getter methods called `first` or `last`.
# `NameError` or `NoMethodError` is raised.
class Person
  attr_writer :first_name, :last_name

  def full_name
    first_name + ' ' + last_name
  end
end

mike = Person.new
mike.first_name = 'Michael'
mike.last_name = 'Garcia'
mike.full_name
=begin
undefined local variable or method `first_name' 
for #<Person:0x0000000101ff55d0 @first_name="Michael", 
    @last_name="Garcia"> (NameError)
=end



class Person
  attr_writer :first_name, :last_name

  def full_name
    self.first_name + ' ' + self.last_name
  end
end

mike = Person.new
mike.first_name = 'Michael'
mike.last_name = 'Garcia'
mike.full_name
=begin
undefined method `first_name' for #<Person:0x0000000107d85290 
@first_name="Michael", @last_name="Garcia"> (NoMethodError)
=end




class Person
  attr_writer :first_name, :full_name

  def full_name
    "#{first_name} #{last_name}"
  end
end

mike = Person.new
mike.first_name = 'Michael'
mike.last_name = 'Garcia'
p mike.full_name
=begin
undefined method `last_name=' for #<Person:0x0000000103cc5200 
@first_name="Michael"> (NoMethodError)
=end
