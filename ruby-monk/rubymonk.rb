# .even? 
a = 2.even?

puts a

# .next 
# getting the number three
b = 1.next.next
puts b

# .methods
# my_methods = 1.methods


# sorting methods with .sort
# my_sort_methods = 1.methods.sort


# .index 
c = ['rock','paper','scissors'].index('paper')
puts c # ~> 1
# if the argument was not and index, so it'll return nill

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

#working with string interpolation
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

