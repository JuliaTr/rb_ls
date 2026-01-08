# Fix the following code so it works properly:

class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage   # 5000
# should print 5678



## Bug fix
class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    @mileage += miles
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage   # 5678
# Works as expected


## Experiments
class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    @mileage += miles
  end

  def mileage=(miles)
    @mileage = miles + 1
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage    # 5679



## Possible solution
class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  # Option 1:
  def increment_mileage(miles)
    total = mileage + miles
    # `self.mileage = ` call the setter method `mileage=`
    # using the public interface (the accessor)
    self.mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage           # 5678



class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  # More concise
  def increment_mileage(miles)
    self.mileage += miles
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage    # 5678



class Car
  attr_accessor :mileage

  def initializw
    @mileage = 0
  end

  # Option 2
  def increment_mileage(miles)
    total = mileage + miles
    # reaches into the object's internal state directly
    @mileage = total
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage   # 5678
# Works as expected
