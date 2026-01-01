=begin
- Create a class 'Student' with attributes `name` and `grade`. 
- Do NOT make the grade getter public, so `joe.grade` will 
  raise an error. 
- Create a `better_grade_than?` method, that you can call 
  like so:

puts "Well done!" if joe.better_grade_than?(bob)

=end

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade 
  end

  # Grade getter is NOT public
  protected
  def grade
    @grade
  end
end

joe = Student.new('Joe', 97)
# p joe.grade
# =begin
# protected method `grade' called for #<Student:0x0000000107d45550 
# @name="Joe", @grade=97> (NoMethodError)
# =end

bob = Student.new('Bob', 88)

p joe.better_grade_than?(bob)   # true
p bob.better_grade_than?(joe)   # false

puts "Well done!" if joe.better_grade_than?(bob)
# Well done!
