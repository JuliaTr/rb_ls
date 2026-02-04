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
