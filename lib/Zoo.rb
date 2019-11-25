class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        Zoo.all.select{|zoo| zoo.location == location}
    end

    def assign_animal(species, weight, nickname)
        Animal.new(species, weight, nickname, self)
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
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
end
