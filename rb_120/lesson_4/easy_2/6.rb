=begin
Which one of these is a class method (if any) and how do you know? 
How would you call a class method?
=end

class Television
  def self.manufacturer   # class method
  end

  def model
  end
end

Television.manufacturer

=begin
The class method is `self.manufacturer`. It's name is prefixed with `self.`
when the class is defined on line 7. 

We can call class method by using the class method and then calling
the method: `Television.manufacturer`.
=end
