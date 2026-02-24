=begin
Student and Grade

Description​:  Create a Student class. The constructor should 
take a name and a grade as arguments. The grade should be 
stored but not be publicly alterable. Add a public 
method get_grade to return the grade, and another method 
change_grade that takes a new grade and updates the 
student's grade. 
=end

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def get_grade
    @grade
  end

  def change_grade(another_grade)
    @grade = another_grade
  end
end

student = Student.new("Alice", 95)
p student.get_grade == 95 # true
student.change_grade(98)
p student.get_grade == 98 # true
