class Animal
    attr_accessor :species, :weight, :nickname, :zoo

    @@all = []

    def initialize (species:, weight:, nickname:, zoo:)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    # START FROM HERE!
    #Animal#zoo should return the zoo instance that the instance belongs to.
    #Request satisfied.

    #Animal.find_by_species should take in an animal's species as an argument and return an array of all the animals, 
    #which are of that species.
    def self.find_by_species(this_species)
        Animal.all.find_all{|animal|(animal.species==this_species)}
    end
end