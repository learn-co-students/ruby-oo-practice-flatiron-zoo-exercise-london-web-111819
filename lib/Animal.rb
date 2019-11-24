class Animal
    attr_reader :species, :weight, :nickname, :zoo

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        Animal.all.select{|animal| animal.species == species}
    end

    def zoo
        @zoo
    end
end
