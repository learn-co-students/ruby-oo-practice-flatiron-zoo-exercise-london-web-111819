class Animal
    attr_reader :nickname, :species
    attr_accessor :weight, :zoo

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @zoo = zoo
        @nickname = nickname
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def zoo
        @zoo
    end

    def self.find_by_species(species)
        Animal.all.select{|animal| animal.species == species}
    end
end
