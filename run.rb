require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new(name:"London Zoo",location:"London")
zoo2 = Zoo.new(name:"AMS Zoo",location:"Amsterdam")
zoo3 = Zoo.new(name:"Moorgate Zoo",location:"London")
a1 = zoo1.create_animal(species:"Cat", weight:20, nickname:"Nick-11")
a2 = zoo1.create_animal(species:"DogOther", weight:30, nickname:"Nick-22")
a3 = zoo1.create_animal(species:"DogOther", weight:32, nickname:"Nick-33")
a4 = zoo1.create_animal(species:"Dog", weight:44, nickname:"Nick-44")

binding.pry
puts "done"
