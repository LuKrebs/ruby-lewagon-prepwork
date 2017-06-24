module WarmUp
  def push_ups
    "Phew, I need a break!"
  end
end

class Gym
  include WarmUp
  
  def preacher_curls
    "I'm building my biceps."
  end
end

class Dojo
  include WarmUp
  
  def tai_kyo_kyu
    "Look at my stance!"
  end
end


puts Gym.new.push_ups
puts Dojo.new.push_ups
puts Dojo.new.tai_kyo_kyu
puts Gym.new.preacher_cur

module WarmUpTwo
end

puts WarmUpTwo.class    # Module
puts Class.superclass   # Module
puts Module.superclass  # Object


module Perimeter
  # Your code here
  def perimeter
    sides.sum()
  end
end

class Rectangle
  # Your code here
  include Perimeter
  
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  # Your code here
  include Perimeter
  
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

module Perimeter
  class Array
    def initialize
      @size = 400
    end
  end
end

our_array = Perimeter::Array.new
ruby_array = Array.new

p our_array.class
p ruby_array.class