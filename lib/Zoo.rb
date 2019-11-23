class Zoo
    attr_reader :location
    attr_accessor :name

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all.push(self)
    end

    def self.all
        @@all
    end 

    def add_animal(species, weight, nickname)
        Animal.new(species, weight, nickname, self.name)
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self.name}
    end

    def animal_species
        animals.map{|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    def animal_nicknames
        animals.map{|animal| animal.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.select{|zoo| zoo.location == location}
    end
end
