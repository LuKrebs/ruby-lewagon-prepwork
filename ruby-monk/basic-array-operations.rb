my_new_array = [1, 2, 3, 4, 5].map { |i| i + 1 }
puts my_new_array 

puts ""

my_array = [1, 2, 3, 4, 5].map { |i| i * 3 }
puts my_array

puts ""

# select even numbers
my_array_two = [1,2,3,4,5,6].select {|number| number % 2 == 0}
puts my_array_two

puts ""

# select itens longer than 5 characters
names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
puts names.select {|a| a.length > 5}

puts ""

# deleting elements of an array
my_delete_array = [1,3,5,4,6,7].delete(5)
puts my_delete_array.methods.sort
puts "The .delete return the element that was removed ~> #{my_delete_array} ~> #{my_delete_array.is_a?(Integer)}"

puts ""

# delete_if
my_delete_if = [1,2,3,4,5,6,7].delete_if {|a| a < 4}
puts my_delete_if
puts my_delete_if.is_a?(Array)

puts ""

my_even_array = [1,2,3,4,5,6,7,8,9].delete_if {|a| a % 2 == 0}
puts my_even_array

puts ""

my_odd_array = [1,2,3,4,5,6,7,8,9].delete_if {|a| a % 2 != 0}
puts my_odd_array

def array_copy(source)
  destination = []
  # your code
  for x in source
    if x < 5
      destination.push(x)
    end
  end
  return destination
end

puts ""
puts array_copy([1,1,2,3,4,5,6,9,8,7])


puts ""

# .each
array = [1, 2, 3, 4, 5]
array.each do |i|
  puts i
end

def array_copy_two(source)
  destination = []
  # your code
  source.each do |i|
    if i < 4
      destination.push(i)
    end
  end
  return destination
end

# hashes
my_hash = {
  "Ramen" => 3,
  "Dal Makhani" => 4,
  "Tea" => 2
}
puts ""
puts "My hashes values"
puts my_hash["Ramen"]
puts my_hash["Dal Makhani"]
puts my_hash["Tea"]

puts ""

restaurant_menu = {}
# set the values for each item separately here:
restaurant_menu["Dal Makhani"] = 4.5
restaurant_menu["Tea"] = 2

restaurant_menu_two = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu_two.each do |x, y|
	puts "#{x}: #{y}"
end

puts ""

puts "Prices increasing 10%"
#increasing the price in 10%
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# write the each loop here. 
restaurant_menu.each do |item, price|
  restaurant_menu[item] = price * 1.1
end

restaurant_menu.each do |a, b|
	puts "#{a}: #{b}"
end

puts ""

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# your code here
puts "Keys in an hash using .keys"
puts restaurant_menu.keys
puts "Values in an hash using .values"
puts restaurant_menu.values

def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]
  key_value_pairs = [a, b, c]
  Hash[key_value_pairs]
end
p artax


puts 1.class
puts "".class
puts [].class

puts 1.is_a?(Integer)
puts 1.is_a?(String)

# Classes and Instance Variables 
class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
  def area
    @length * @breadth
  end
end

# call
next_method_object = 1.method("next")
puts next_method_object.call

def reverse_sign(an_integer)
  return 0 - an_integer
end

puts reverse_sign(100)
puts reverse_sign(-5)

def demonstrate_early_return
  return
  puts "You will never see this, because we never get here."
end

puts demonstrate_early_return.class

def add_two(n)
  n + 2
end 

def add(a_number, another_number, yet_another_number = 0) # default value
  a_number + another_number + yet_another_number
end

puts add(1, 2)

def say_hello(name = "Qui-Gon Jinn")
  "Hello, #{name}."
end

def add(*numbers) # variable parameters
  numbers.inject(0) { |sum, number| sum + number }
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)

def add(a_number, another_number, yet_another_number)
  a_number + another_number + yet_another_number
end

numbers_to_add = [1, 2, 3] # Without a splat, this is just one parameter
puts add(*numbers_to_add)  # Try removing the splat just to see what happens

def add(*names)
  names.inject("") { |a, b| a + " " + b }
end
def introduction(age, gender, *names)
  "Meet#{add(*names)}, who's #{age} and #{gender}" 
end

puts introduction(28, "Male", "Sidu", "Ponnappa", "Chonira")

def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)

def add(*numbers)
  numbers.inject(0) { |a, b| a + b }
end
def subtract(*numbers)
  test = numbers.shift
  x = numbers.inject(0){ |a, b| a + b }
  x = - x
  result = x + test
  return result
end
def calculate(*arguments)
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end

l = lambda { "Do or do not" }
puts l.call

l = lambda do |string|
  if string == "try"
    return "There's no such thing" 
  else
    return "Do or do not."
  end
end
puts l.call("try") # Feel free to experiment with this

Increment = lambda { |x| x + 1 } # your lambda between the braces
Increment.call(1) 
Increment.call(1000) 

def demonstrate_block(number)
  yield(number)
end

puts demonstrate_block(1) { |x| x + 1 }

def calculate(*number)
  yield(number)
end

