class Zoo
    attr_accessor :name, :location

    @@all =[]

    def initialize(name:, location:)
        @name = name 
        @location = location 
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        #Zoo#animals should return all the animals that a specific instance of a zoo has.
        Animal.all.select {|animal| animal.zoo == self}
    end

    def create_animal(species:, weight:, nickname:)
        Animal.new(species:species,weight:weight,nickname:nickname,zoo:self)
    end

    def animal_species
        #Zoo#animal_species should return an array of all the species (as strings) of the animals in the zoo. 
        #However, if you have two dogs, it should only return one "Dog" string (aka an unique array).
        Animal.all.map{|animal|animal.species}.uniq
    end

    def find_by_species(this_species)
        #Zoo#find_by_species should take in an animal's species as an argument 
        #and return an array of all the animals in that zoo, which are of that species.
        Animal.all.find_all{|animal|(animal.zoo ==self) && (animal.species==this_species)}
    end

    def self.animal_nicknames(this_zoo)
    #Zoo#animal_nicknames should return an array of all the nicknames of animals that a specific instance of a zoo has.
        Animal.all.find_all{|animal|(animal.zoo == this_zoo)}.map{|animal|animal.nickname}
    end

    def self.find_by_location(this_location)
        #Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.
        Zoo.all.find_all{|zoo|zoo.location == this_location}.uniq
    end

end
