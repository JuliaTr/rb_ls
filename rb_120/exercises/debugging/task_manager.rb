# Can you find the bug and fix it?
class TaskManager
  attr_reader :owner
  attr_accessor :tasks

  def initialize(owner)
    @owner = owner
    @tasks = []
  end

  def add_task(name, priority=:normal)
    task = Task.new(name, priority)
    tasks.push(task)
  end

  def complete_task(task_name)
    completed_task = nil

    tasks.each do |task|
      completed_task = task if task.name == task_name
    end

    if completed_task
      tasks.delete(completed_task)
      puts "Task '#{completed_task.name}' complete! Removed from list."
    else
      puts "Task not found."
    end
  end

  def display_all_tasks
    display(tasks)
  end

  def display_high_priority_tasks
    # Ruby interpretes two references to `tasks` as the same local
    # variable.
    tasks = tasks.select do |task|
      task.priority == :high
    end

    display(tasks)
  end

  private

  def display(tasks)
    puts "----------"
    # `tasks` is a method paramether, not a getter method
    tasks.each do |task|
      puts task
    end
    puts "---------"
  end
end

class Task
  attr_accessor :name, :priority

  def initialize(name, priority=:normal)
    @name = name
    @priority = priority
  end

  def to_s
    "[" + sprintf("%-6s", priority) + "] #{name}"
  end
end

valentinas_taks = TaskManager.new('Valentina')

valentinas_taks.add_task('pay bills', :high)
valentinas_taks.add_task('read OOP book')
valentinas_taks.add_task('practice Ruby')
valentinas_taks.add_task('run 5k', :low)

valentinas_taks.display_all_tasks
=begin
-----------
[high  ] pay bills
[normal] read OOP book
[normal] practice Ruby
[low   ] run 5k
-----------
=end

valentinas_taks.complete_task('read OOP book')
# Task 'read OOP book' complete! Removed from list.

valentinas_taks.display_all_tasks
=begin
-----------
[high  ] pay bills
[normal] practice Ruby
[low   ] run 5k
-----------
=end

valentinas_taks.display_high_priority_tasks
# private method `select' called for nil:NilClass (NoMethodError)

=begin
Invoking `select` on `tasks` (line 38), we're referencing a local 
variable `tasks`. Since `tasks` has not been assigned a value, its 
value is `nil`. (Additionally see experiment below)

Here Ruby interprets `tasks` on the left-hand of the assignment operator `=`
as a local variable, not a setter method.

On the same line reference it via `tasks.select`, before it has 
been assigned a value. `tasks.select` was being called on `nil`.
The getter method `tasks` is shadowed by the initialized 
local varible `tasks`.

Invoking the `select` method on `nil` caused the error.
=end




## Possible solution
class TaskManager
  attr_reader :owner
  attr_accessor :tasks

  def initialize(owner)
    @owner = owner
    @tasks = []
  end

  def add_task(name, priority=:normal)
    task = Task.new(name, priority)
    tasks.push(task)
  end

  def complete_task(task_name)
    completed_task = nil

    tasks.each do |task|
      completed_task = task if task.name == task_name
    end

    if completed_task
      tasks.delete(completed_task)
      puts "Task '#{completed_task.name}' complete! Removed from list."
    else
      puts "Task not found."
    end
  end

  def display_all_tasks
    display(tasks)
  end

  def display_high_priority_tasks
    # `tasks` is a getter method 
    high_priority_tasks = tasks.select do |task| 
      task.priority == :high
    end

    display(high_priority_tasks)
  end

  private

  def display(tasks)
    puts "----------"
    tasks.each do |task|
      puts task
    end
    puts "----------"
  end
end

class Task
  attr_accessor :name, :priority

  def initialize(name, priority=:normal)
    @name = name
    @priority = priority
  end

  def to_s
    "[" + sprintf("%-6s", priority) + "] #{name}"
  end
end

valentinas_tasks = TaskManager.new('Valentina')

valentinas_tasks.add_task('pay bills', :high)
valentinas_tasks.add_task('read OOP book')
valentinas_tasks.add_task('practice Ruby')
valentinas_tasks.add_task('run 5k', :low)

valentinas_tasks.complete_task('read OOP book')

valentinas_tasks.display_all_tasks
valentinas_tasks.display_high_priority_tasks

valentinas_tasks.display_all_tasks

=begin
Task 'read OOP book' complete! Removed from list.
----------
[high  ] pay bills
[normal] practice Ruby
[low   ] run 5k
----------
----------
[high  ] pay bills
----------
----------
[high  ] pay bills
[normal] practice Ruby
[low   ] run 5k
----------


Works as expected.
=end





## Experiments:
# Mutates the original `TaskManager` state by `self.tasks=`:
class TaskManager
  attr_reader :owner
  attr_accessor :tasks

  def initialize(owner)
    @owner = owner
    @tasks = []
  end

  def add_task(name, priority=:normal)
    task = Task.new(name, priority)
    tasks.push(task)
  end

  def complete_task(task_name)
    completed_task = nil

    tasks.each do |task|
      completed_task = task if task.name == task_name
    end

    if completed_task
      tasks.delete(completed_task)
      puts "Task '#{completed_task.name}' complete! Removed from list."
    else
      puts "Task not found."
    end
  end

  def display_all_tasks
    display(tasks)
  end

  def display_high_priority_tasks
    p tasks
    # **Changes the state** of the `TaskManager` by overwriting `@tasks`
    # with only the high-priority tasks.
    self.tasks = tasks.select do |task|
      task.priority == :high
    end
    p tasks

    display(self.tasks)
  end

  private

  def display(tasks)
    puts '-----------'
    tasks.each do |task|
      puts task
    end
    puts '-----------'
  end
end

class Task
  attr_accessor :name, :priority

  def initialize(name, priority=:normal)
    @name = name
    @priority = priority
  end

  def to_s
    "[" + sprintf("%-6s", priority) + "] #{name}"
  end
end

valentinas_taks = TaskManager.new('Valentina')

valentinas_taks.add_task('pay bills', :high)
valentinas_taks.add_task('read OOP book')
valentinas_taks.add_task('practice Ruby')
valentinas_taks.add_task('run 5k', :low)

valentinas_taks.display_all_tasks
=begin
-----------
[high  ] pay bills
[normal] read OOP book
[normal] practice Ruby
[low   ] run 5k
-----------
=end

valentinas_taks.complete_task('read OOP book')
# Task 'read OOP book' complete! Removed from list.

valentinas_taks.display_all_tasks
=begin
-----------
[high  ] pay bills
[normal] practice Ruby
[low   ] run 5k
-----------
=end

valentinas_taks.display_high_priority_tasks
# [#<Task:0x0000000108fc3858 @name="pay bills", @priority=:high>, 
#<Task:0x0000000108fc3718 @name="practice Ruby", @priority=:normal>, 
#<Task:0x0000000108fc36c8 @name="run 5k", @priority=:low>]

# [#<Task:0x0000000108fc3858 @name="pay bills", @priority=:high>]

=begin
-----------
[high  ] pay bills
-----------
=end

valentinas_taks.display_all_tasks
=begin
-----------
[high  ] pay bills
-----------
=end




a = [1, 2, 3]
result = result.select { |val| val == 2 }
=begin
private method `select' called for nil:NilClass (NoMethodError)
=end
