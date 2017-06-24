# .even? 
a = 2.even?

puts a

# .next 
# getting the number three
b = 1.next.next
puts b # ~> 3

# .methods
# my_methods = 1.methods


# sorting methods with .sort
# my_sort_methods = 1.methods.sort


# .index 
c = ['rock','paper','scissors'].index('paper')
puts c # ~> 1
# if the argument was not an index, so it'll return nil

# .between
d = 2.between?(1,3)

# everything is an object
e = 4.+(3)
puts e

words = ["foo", "bar", "baz"]
f = words[1]
g = words.[](1)
teste = (f == g) # ~> true
puts teste

puts "Ruby works pretty well with simple quotes or doble quotes"

# .length
h = "RubyMonk".length
puts h

# string interpolation
my_name = "Luciano Krebs"
position = "Software Engineer"
industry = "Tech"
puts "#{my_name} work as #{position} at #{industry} industry"

# creating a simple method
def string_length_interpolater(incoming_string)
  "The string you just gave me has a length of #{incoming_string.length}"
end

puts string_length_interpolater("LUCIANO KREBS")

# .include?()
i = "[Luke:] I can’t believe it. [Yoda:] That is why you fail.".include?("Yoda")
puts i
j = "Luciano".methods
#puts j.sort

# .start_with("")
k = "Ruby is a beautiful language".start_with?("R")

# .end_with?()
l = "Ruby is a beautiful language".end_with?("R")

# .index with strings
m = "I am a Rubyist".index("R")

# .downcase / .upcase
n = 'This is Mixed CASE'.downcase
o = 'This is Mixed CASE'.upcase
puts n
puts o

puts "ThiS iS A vErY ComPlEx SenTeNcE" 
puts "ThiS iS A vErY ComPlEx SenTeNcE".swapcase + " This is a swapcase method :)"

# split 
split_string = 'Fear is the path to the dark side'.split(" ")
puts split_string

# concatenating strings
concatenating_string = "Ruby" + "Monk"
puts concatenating_string
puts "Ruby" << ("Monk")

# .sub
simple_sub = "I should look into your problem when I get time".sub('I','We')

# ReGex gsub ~> global subs
global_sub = "I should look into your problem when I get time".gsub('I','We')
capital_letters_sub = 'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/, "0")

puts simple_sub
puts global_sub
puts capital_letters_sub

# .match(pattern, position to start)
match_string = 'RubyMonk Is Pretty Brilliant'.match(/ ./, 9)
puts match_string

# comparing two objects
my_name = "Luciano"
puts my_name == "Bob"

age = 35
puts age <= 35
puts age == 40
puts age >= 21
puts age > 10
puts age < 50

# &&  ||
true_or_false = (age >= 23) && (my_name == 'Bob' || my_name == "Jill")

# ! ~> Negating expressions
true_or_false_two = !(my_name == "Bob")

def check_sign(number)
  if number > 0
    "#{number} is positive"
  elsif number == 0
    "#{number} is zero!"
  else
    "#{number} is negative"
  end        
end

puts check_sign(10)
puts check_sign(0)
puts check_sign(-50)

# unless
age = 10
unless age >= 18
	puts "Sorry, you need at least 18 to drive a car. Grow up fast!"
end

# ternary operator
def postive_or_not(number)
	number > 0 ? "#{number} is positive" : "#{number} is negative"
end
puts postive_or_not(20)

# only false and nil return false
# every other object return true!
if 0
  puts "Hey, 0 is considered to be a truth in Ruby" 
end


# loop do
my_loop = 7
a = 0
loop do
	a = a + 1
	puts "Luciano is a Software Engineer"
	break if a == my_loop 
end

def ring(message, n)
	n.times do
		puts message
	end
end

puts ""

puts ring("Luciano is a Software Engineer", 5)

# Arrays
my_array = [1,2,3,4,5]
puts "printing my array:"
puts my_array

# looking up data in arrays
my_new_array = [1, 2, 3, 4, 5, 6, 7] 
third_value = my_new_array[2]

fifth_value = my_new_array[4]

puts my_new_array
puts "This is the third value ~> #{third_value}"
puts "This is the fifth value ~> #{fifth_value}"

# reverse lookup
puts "Reverse lookup starts in -1 ~> the last element of the array"
puts "Reverse lookup: [1, 2, 3, 4, 5][-5]"
puts [1, 2, 3, 4, 5][-5]

puts "Extracting the last element of the array ~> [1, 2, 3, 4, 5][-1]"
puts [1, 2, 3, 4, 5][-1]

puts ""
my_append_array = [1, 2, 3, 4, 5] << "woot"
puts my_append_array
my_push_array = [1, 2, 3, 4, 5].push("woot")
puts my_push_array

p [].methods