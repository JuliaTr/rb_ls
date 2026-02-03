=begin
From course video:

Inside a preschool there are children, teachers, class 
assistants, a principal, janitors, and cafeteria workers.

Both teachers and assistants can help a student with 
schoolwork and watch them on the playground. 

A teacher teaches and an assistant helps kids with any bathroom 
emergencies. 

Kids themselves can learn and play.

A teacher and principal can supervise a class.
Only the principal has the ability to expel a kid. 
Janitors have the ability to clean. 
Cafeteria workers have the ability to serve food. 
Children, teachers, class assistants, principals, janitors 
and cafeteria workers all have the ability to eat lunch.

## Step 1:
Brainstorming:
Nouns (classes): preschool, children, teacher, class assistant,
      principal, janitor, cafeteria worker, kid
Inheritance relashiopship:
`Assistant` is a subclass of `Teacher`.

## Step 2:
Verbs (behaviours): teach, help kids, help with school work,
      watch playground



My option:
Nouns (classes): preschool, children, teacher, class assistant, 
       principal, janitor, cafeteria worker, student,
       schoolwork, playground, kids, bathroom mergencies, class,
       food, lunch
Verbs: help, watch, teach, learn, play, supervise, expel, clean
       serve, eat
=end

## Step 2:
class Preschool; end

=begin
Comparing with `module`, class can have states and behaviours
and collaboration between objects.
=end
class Person 
  def eat_lunch; end
end

class CareTaker < Person
  def help_school_work; end
  def watch_palyground; end
end

class Teacher < CareTaker
  def teach; end
end

class Assistant < CareTaker
  def help_kids; end
end

class Principal < Person; end

class Janitor < Person; end

class CafeteriaWorker < Person; end

class Kid < Person; end




# Option with module
class Preschool; end

module Lunchable
  def eat_lunch; end
end

class CareTaker
  include Lunchable

  def help_school_work; end
  def watch_palyground; end
end

class Teacher < CareTaker
  include Lunchable

  def teach; end
end

class Assistant < CareTaker
  include Lunchable

  def help_kids; end
end

class Principal
  include Lunchable
end

class Janitor
  include Lunchable
end

class CafeteriaWorker
  include Lunchable
end

class Kid
  include Luchable
end



## Step 1:
# After brainstorming, identifying nouns, inheritance relashionship:
class Preschool; end  # valid syntax for code spikes

class Teacher; end

class Assistant < Teacher; end

class Principal; end

class Janitor; end

class CafeteriaWorker; end

class Kid; end
