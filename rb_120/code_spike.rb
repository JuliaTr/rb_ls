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
Inheritance relationship:
`Assistant` is a subclass of `Teacher`.

## Step 2:
Verbs (behaviours): teach, help kids, help with school work,
      watch playground, eat lunch, supervise
Define modules.


My option:
Nouns (classes): preschool, children, teacher, class assistant, 
       principal, janitor, cafeteria worker, student,
       schoolwork, playground, kids, bathroom mergencies, class,
       food, lunch
Verbs: help, watch, teach, learn, play, supervise, expel, clean
       serve, eat
=end

## Step 3 - Collaborationship relationship:
module Supervise
  def supervise; end
end

class Preschool
  def initialize
    @attendees = []
  end

  def <<(attendees)
    @attendees << attendees
  end
end

=begin
`Preschool` has its attribute of attendees. `Preschool` holds
its attendees. 

`Preschool` has some people in it and we need to do smth 
with these people. (collaboration)

It's `Preschool`'s job to get these collaborators. 
We don't have to define it anywheere in the collaborator.
As soon as I create you, I move you to `Preschool` as part of your code.
=end

class Person
  def initialize(preschool)
    # Every time we create a `Person`, that `Person` automatically
    # registers itself with the `preschool`collection passed in.
    # Newly created `Person` object gets added to `preschool`
    # right when it's initialized.
    # `self` is passed as the element to be added to `preschool`.
    # `Person` object add itself to some external collection on
    # initialization.
    preschool << self
  end

  def eat_lunch; end
end

=begin
preschool = []
alice = Person.new(preschool)
preschool << alice
=end

class CareTaker < Person
  def help_school_work; end
  def watch_palyground; end
end

class Teacher < CareTaker
  include Supervise

  def teach; end
end

class Assistant < CareTaker
  def help_kids; end
end

class Principal < Person
  include Supervise
end

class Janitor < Person; end

class CafeteriaWorker < Person; end

class Kid < Person; end





## Step 2:
module Supervise
  def supervise; end
end

class Preschool; end

class Person 
  def eat_lunch; end
end

class CareTaker < Person
  def help_school_work; end
  def watch_palyground; end
end

class Teacher < CareTaker
  include Supervise

  def teach; end
end

class Assistant < CareTaker
  def help_kids; end
end

class Principal < Person
  include Supervise
end

class Janitor < Person; end

class CafeteriaWorker < Person; end

class Kid < Person; end

=begin
                 People

          /     \         \      \
  Caretaker  Principal  Janitor  CafeteriaWorker
  /      \
Teacher  Assistant

=end




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
