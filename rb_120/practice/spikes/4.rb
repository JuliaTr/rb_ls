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


Nouns: preschool, children, teachers, class assistants, principle,
       janitors, cafeteria workers
Verbs: help with schoolwork, watch on playground, teaches,
       help with bathroom emergencies, learn, play, supervise class
       ecpel, clean, serve food, eat lunch
=end

module Supervisable
  def supervise(class_students)
    puts "I supervise #{class_students.class}!"
  end
end

class Preschool
  attr_reader :staff

  def initialize
    @staff = []
  end

  def add_staff_member(staff)
    @staff << staff
  end
end

class ClassStudents
  attr_reader :students

  def initialize
    @students = []
  end

  def add_student_to_class(student)
    @students << student
  end
end

class People
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

class Educator < People
  def help_with_schoolwork(student)
    puts "I help #{student.class} with schoolwork!"
  end

  def watch_playground(class_students)
    puts "I watch #{class_students.class} on the playground!"
  end
end

class Teacher < Educator
  include Supervisable

  def teach(class_students)
    puts "I teach #{class_students.class}!"
  end
end

class ClassAssistant < Educator
  def help_with_bathroom_emergencies(student)
    puts "I help #{student.class} with bathroom emergencies!"
  end
end

class Principle < People
  include Supervisable

  def expel(student)
    puts "I expel #{student.class}!"
  end
end

class Janitor < People
  def clean
    puts "I clean!"
  end
end

class CafeteriaWorker < People
  def serve_food
    puts "I serve food!"
  end
end


# - Inside a preschool there are children, teachers, class 
#   assistants, a principle, janitors, and cafeteria workers.
preschool = Preschool.new

principle = Principle.new
teacher1 = Teacher.new
teacher2 = Teacher.new
teacher3 = Teacher.new

class_assistant1 = ClassAssistant.new
class_assistant2 = ClassAssistant.new

janitor1 = Janitor.new

caf_worker1 = CafeteriaWorker.new
caf_worker2 = CafeteriaWorker.new

preschool.add_staff_member(principle)
preschool.add_staff_member(teacher1)
preschool.add_staff_member(teacher2)
preschool.add_staff_member(teacher3)
preschool.add_staff_member(class_assistant1)
preschool.add_staff_member(class_assistant2)
preschool.add_staff_member(janitor1)
preschool.add_staff_member(caf_worker1)
preschool.add_staff_member(caf_worker2)

puts "Staff at preschool:"
preschool.staff.each do |worker|
  puts "-#{worker}"
end

=begin
-#<Principle:0x000000010e9c1a08>
-#<Teacher:0x000000010e9c1968>
-#<Teacher:0x000000010e9c18f0>
-#<Teacher:0x000000010e9c18a0>
-#<ClassAssistant:0x000000010e9c1828>
-#<ClassAssistant:0x000000010e9c17b0>
-#<Janitor:0x000000010e9c1738>
-#<CafeteriaWorker:0x000000010e9c1698>
-#<CafeteriaWorker:0x000000010e9c1620>
=end

class_students = ClassStudents.new
student1 = Student.new
student2 = Student.new
student3 = Student.new
student4 = Student.new

class_students.add_student_to_class(student1)
class_students.add_student_to_class(student2)
class_students.add_student_to_class(student3)
class_students.add_student_to_class(student4)

puts "Preshool's class include:"
class_students.students.each do |student|
  puts "- #{student}"
end

=begin
Preshool's class include:
- #<Student:0x0000000101e90cd0>
- #<Student:0x0000000101e90c58>
- #<Student:0x0000000101e90c08>
- #<Student:0x0000000101e90bb8>
=end

# - Both teachers and assistants can help a student with schoolwork 
#   and watch them on the playground.
# (I've taken only one teacher and one class assistant for a test 
# case)
teacher1.help_with_schoolwork(student1)
class_assistant1.help_with_schoolwork(student2)
=begin
I help Student with schoolwork!
I help Student with schoolwork!
=end

teacher1.watch_playground(class_students)
teacher1.watch_playground(class_students)
=begin
I watch ClassStudents on the playground!
I watch ClassStudents on the playground!
=end

# - A teacher teaches and an assistant helps kids with any bathroom 
#   emergencies. 
# (I've taken only one teacher and one class assistant for a test 
# case)
teacher1.teach(class_students)
class_assistant1.help_with_bathroom_emergencies(student3)
=begin
I teach ClassStudents!
I help Student with bathroom emergencies!
=end

# - Kids themselves can learn and play.
# (I've taken only two students for a test case)
student1.learn # I learn!
student2.play  # I play!

# - A teacher and principle can supervise a class.
# (I've taken only one teacher for a test case)
principle.supervise(class_students)
teacher1.supervise(class_students)
=begin
I supervise ClassStudents!
I supervise ClassStudents!
=end

# - Only the principle has the ability to expel a kid.
principle.expel(student4) # I expel Student!

# - Janitors have the ability to clean.
# (I've taken only one janitor for a test case)
janitor1.clean           # I clean!

# - Cafeteria workers have the ability to serve food.
# (I've taken only one cafeteria worker for a test case)
caf_worker1.serve_food   # I serve food!

# - Children, teachers, class assistants, principles, janitors and 
#   cafeteria workers all have the ability to eat lunch.
# (I've taken only one techer, class assistant, janitor, cafeteria
#  worker, student for a test case)
principle.eat_lunch          # I eat lunch!
teacher1.eat_lunch           # I eat lunch!
class_assistant1.eat_lunch   # I eat lunch!
janitor1.eat_lunch           # I eat lunch!
caf_worker1.eat_lunch        # I eat lunch!
student1.eat_lunch           # I eat lunch!
