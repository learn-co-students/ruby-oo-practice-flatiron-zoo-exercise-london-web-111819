require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Relationship

#Animal belongs_to Zoo
#Zoo has_many Animals
#Animals stores all the data about their occuerances
#Zoo manipualtes the data via Animals collection

zoo1 = Zoo.new('London ZOO', 'London')
zoo2 = Zoo.new('Moscow ZOO', 'Moscow')

an1 = Animal.new('cat', 20, 'paw', zoo1)
an2 = Animal.new('cat', 25, 'claw', zoo1)
an3 = Animal.new('dog', 30, 'woof', zoo1)

an4 = Animal.new('tiger', 60, 'random', zoo2)
an5 = Animal.new('cheetah', 70, 'swift', zoo2)
an6 = Animal.new('rhino', 500, 'horns', zoo2)
an7 = Animal.new('cat', 25, 'destroyer', zoo2)

binding.pry
puts "done"
