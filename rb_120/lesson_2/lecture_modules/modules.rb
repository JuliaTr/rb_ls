## Modules
module Swimmable
  def swim
    "swimming!"
  end
end

class Dog
  include Swimmable
end

class Fish
  include Swimmable
end