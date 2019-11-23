require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Relationship

#Animal belongs_to Zoo
#Zoo has_many Animals
#Animals stores all the data about their occuerances
#Zoo manipualtes the data via Animals collection

zoo1 = Zoo.new('zoo1', 'London')
zoo2 = Zoo.new('zoo2', 'Moscow')
zoo3 = Zoo.new('zoo3', 'Moscow')

an1 = Animal.new('cat', 20, 'paw', 'zoo1')
an2 = Animal.new('cat', 25, 'claw', 'zoo1')
an3 = Animal.new('dog', 50, 'woof', 'zoo2')

binding.pry
puts "done"
