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




