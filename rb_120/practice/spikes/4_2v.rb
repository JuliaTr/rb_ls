=begin
(From SPOT wiki)
Preschool (by Natalie Thompson)
- Inside a preschool there are children, teachers, class 
  assistants, a principle, janitors, and cafeteria workers. 
- Both teachers and assistants can help a student with schoolwork 
  and watch them on the playground. 
- A teacher teaches and an assistant helps kids with any bathroom 
  emergencies. 
- Kids themselves can learn and play. 
- A teacher and principle can supervise a class. 
- Only the principle has the ability to expel a kid. 
- Janitors have the ability to clean. 
- Cafeteria workers have the ability to serve food. 
- Children, teachers, class assistants, principles, janitors and 
  cafeteria workers all have the ability to eat lunch.
=end

## Alternative solution to 4.rb

=begin
In this approach the coupleing between the `People` classes 
and their container is tighter. A `Teacher` object can no longer 
be created in isolation. It *must* be initialized with a `Preschool`.
This approach is implicit with not so clear intent. The addition
to the preschool happens as a side effect of creatinf the teacher.

This is an example of aggregation.
=end

# rest code is omitted ....

# Changes are here
class Preschool
  attr_reader :staff

  def initialize
    @staff = []
  end

  def <<(staff)
    @staff << staff
  end
end

# Changes are here
class ClassStudents
  attr_reader :students

  def initialize
    @students = []
  end

  def <<(student)
    @students << student
  end
end

# Changes are here
# `People` are responsible adding *themselves* to a collection
# during their own initialization
class People
  def initialize(preschool)
    preschool << self
  end

  def eat_lunch
    puts "I eat lunch!"
  end
end

class Student < People
  def learn
    puts "I learn!"
  end

  def play
    puts "I play!"
  end
end

# rest code is omitted ....



# - Inside a preschool there are children, teachers, class 
#   assistants, a principle, janitors, and cafeteria workers.
preschool = Preschool.new

principle = Principle.new(preschool)
teacher1 = Teacher.new(preschool)
teacher2 = Teacher.new(preschool)
teacher3 = Teacher.new(preschool)

class_assistant1 = ClassAssistant.new(preschool)
class_assistant2 = ClassAssistant.new(preschool)

janitor1 = Janitor.new(preschool)

caf_worker1 = CafeteriaWorker.new(preschool)
caf_worker2 = CafeteriaWorker.new(preschool)

puts "Staff at preschool:"
preschool.staff.each do |worker|
  puts "-#{worker}"
end

# =begin
# -#<Principle:0x000000010e9c1a08>
# -#<Teacher:0x000000010e9c1968>
# -#<Teacher:0x000000010e9c18f0>
# -#<Teacher:0x000000010e9c18a0>
# -#<ClassAssistant:0x000000010e9c1828>
# -#<ClassAssistant:0x000000010e9c17b0>
# -#<Janitor:0x000000010e9c1738>
# -#<CafeteriaWorker:0x000000010e9c1698>
# -#<CafeteriaWorker:0x000000010e9c1620>
# =end

class_students = ClassStudents.new
student1 = Student.new(class_students)
student2 = Student.new(class_students)
student3 = Student.new(class_students)
student4 = Student.new(class_students)

puts "Preschool's class include:"
class_students.students.each do |student|
  puts "- #{student}"
end

# =begin
# Preschool's class include:
# - #<Student:0x0000000101e90cd0>
# - #<Student:0x0000000101e90c58>
# - #<Student:0x0000000101e90c08>
# - #<Student:0x0000000101e90bb8>
# =end

# rest test cases are omitted ...
