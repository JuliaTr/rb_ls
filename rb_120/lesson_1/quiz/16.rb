# =begin
# Examine the following Ruby code.
# The last line in the above code should return "A". Which of the 
# following methods can we add to the Student class, so the code 
# works as expected.
# =end

# class Student
#   attr_accessor :name, :grade

#   def initialize(name)
#     @name = name
#     @grade = nil
#   end
# end

# priya = Student.new("Priya")
# priya.change_grade('A')
# priya.grade



# ## Solution
# # Option 1:
# class Student
#   attr_accessor :name, :grade

#   def initialize(name)
#     @name = name
#     @grade = nil
#   end

#   def change_grade(new_grade)
#     @grade = new_grade
#   end
# end

# priya = Student.new("Priya")
# priya.change_grade('A')
# p priya.grade  # "A"



# # Option
# class Student
#   attr_accessor :name, :grade

#   def initialize(name)
#     @name = name
#     @grade = nil
#   end

#   def change_grade(new_grade)
#     self.grade = new_grade
#   end
# end

# priya = Student.new("Priya")
# priya.change_grade('A')
# p priya.grade  # "A"



# Won't work
class Student
  attr_accessor :name, :grade

  def initialize(name)
    @name = name
    @grade = nil
  end

  def self.change_grade(new_grade)
    grade = new_grade
  end
end

priya = Student.new("Priya")
priya.change_grade('A')
priya.grade
=begin
undefined method `change_grade' for #<Student:0x000000010ad65078 
@name="Priya", @grade=nil> (NoMethodError)
=end
