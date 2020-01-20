# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'


def hello_world lang="en"
  if lang === "es"
    "Hola Mundo"
  elsif lang === "de"
    "Hallo Welt"
  elsif lang === "ru"
    "RUSSIAN Hello World"
  elsif lang === "ja"
    "JAPANESE Hello World"
  else
    "Hello World"
  end
end

# p hello_world "es"
# p hello_world "ru"
# p hello_world

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

# def assign_grade int
#   if int >= 90
#     "A"
#   elsif int >= 80
#     "B"
#   elsif int >= 70
#     "C"
#   elsif int >= 60
#     "D"
#   else
#     "F"
#   end
# end

# p assign_grade 90
# p assign_grade 80
# p assign_grade 70
# p assign_grade 60
# p assign_grade 0

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

def assign_grade int
  if int > 100 || int < 0
    "Please enter a valid score between 0 & 100"
  elsif int >= 90
    "A"
  elsif int >= 80
    "B"
  elsif int >= 70
    "C"
  elsif int >= 60
    "D"
  else
    "F"
  end
end

# p assign_grade 90
# p assign_grade 80
# p assign_grade 70
# p assign_grade 60
# p assign_grade 0
# p assign_grade -10
# p assign_grade 200

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer(noun, num)
  if num > 1
    "#{num} #{noun}s"
  elsif num === 1
    "#{num} #{noun}"
  elsif num === 0
    "zero #{noun}s"
  else
    "Please enter a whole number"
  end
end

# p pluralizer("dog", 0)
# p pluralizer("dog", 1)
# p pluralizer("dog", 2)

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.


def pluralizerPlus(noun, num)
  if noun.match?(/goose|child|person/i) && num != 1
    noun.downcase === "goose" ? noun = "geese" : nil
    noun.downcase === "child" ? noun = "children" : nil
    noun.downcase === "person" ? noun = "people" : nil
  end
  if num > 1 && noun.match?(/geese|children|people/i)
    "#{num} #{noun}"
  elsif num > 1
    "#{num} #{noun}s"
  elsif num === 1
    "#{num} #{noun}"
  elsif num === 0 && noun.match?(/geese|children|people/i)
    "zero #{noun}"
  elsif num === 0
    "zero #{noun}s"
  else
    "Please enter a whole number"
  end
end


p pluralizerPlus("dog", 0)
p pluralizerPlus("dog", 1)
p pluralizerPlus("dog", 2)
p pluralizerPlus("goose", 0)
p pluralizerPlus("goose", 1)
p pluralizerPlus("goose", 2)
p pluralizerPlus("child", 1)
p pluralizerPlus("child", 2)
p pluralizerPlus("child", 3)
p pluralizerPlus("person", 1)
p pluralizerPlus("person", 3)
