# What is the difference in the way the code works?

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template
  end
end

=begin
There's no difference in the result, only in the way each example
accomplishes the task.

The difference is `self.` is prepended to `template` (lines 23), which
means we're calling a setter and getter methods `template`, provided by
`attr_accessor`. Where on line 11, `template` calls getter method.

Because of `attr_accessor` gives opportunity to change `template`
out of the class, there's no need in `self`.
=end
