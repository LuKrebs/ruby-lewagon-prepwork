def length_finder(input_array)
  test_array = []
  for x in input_array
    length_string = x.length
    test_array.push(length_string)
  end
  test_array
end

def find_frequency(sentence, word)
  # Your code here
  sentence = sentence.downcase
  sentence_array = sentence.split(" ")
  sentence_array.count(word)
end

def sort_string(string)
  # your code here
  a = string.split(" ")
  arr = a.sort_by {|x| x.length}
  arr.join(" ")
end

def random_select(array, n)
  # your code here
  my_array = []
  n.times do
    my_array.push(array.shuffle.first)
  end
  return my_array
end

if (candidate.years_of_experience >= 2) && (candidate.github_points >=500) && (candidate.languages_worked_with.include?("Ruby")) && (candidate.applied_recently? == false) && (candidate.age >= 15)
  is_an_experienced_programmer = true
elsif (candidate.years_of_experience < 2) && (candidate.github_points >= 500) && (candidate.languages_worked_with.include?("Ruby")) && (candidate.applied_recently? == false) && (candidate.age >= 15)
  is_an_experienced_programmer = true
elsif (candidate.years_of_experience >= 2) && (candidate.github_points >= 0) && (candidate.languages_worked_with.include?("Ruby")) && (candidate.applied_recently? == false) && (candidate.age >= 15)
  is_an_experienced_programmer = true
end

def sum_of_cubes(a, b)
  # Write your code here
  dif = b - a

  my_array = [b]
  my_new_array = []
  test = a
  while test < b
    my_array.push(test)
    test = test + 1
  end
  x = 0
  while x < my_array.length
    my_new_array.push(my_array[x] * my_array[x] * my_array[x])
    x = x + 1
  end
  return my_new_array.sum
end

def non_duplicated_values(a)
  # Write your code here
  a.select{|item| a.count(item) == 1}
end
p non_duplicated_values([1,2,2,3,3,4,5])

def array_of_fixnums?(array)
  # Write your code here
  x = 0
  aux = true
  if array.length == 0
    return true
  end
  while x < array.length
    if array[x].is_a?(Fixnum) == false
      aux = false
      return aux
    end
    x = x + 1
  end
  aux
end

puts array_of_fixnums?([1,2,3,4,5])








