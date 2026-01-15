# If we have a class AngryCat how do we create a new instance of this class?

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

AngryCat.new
=begin
A new instance of `AngryCat` class is created, by calling a `.new`
class method, which returns a new object of the calling class.
=end
