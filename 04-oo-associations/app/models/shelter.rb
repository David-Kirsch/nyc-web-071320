class Shelter
    @@all = []

    def initialize(name)
        @@name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def find_all_in_shelter
        Animal.all.select do |animal|
            animal.shelter == self
        end
    end

    def find_all_adopted
        find_all_in_shelter.map do |animal|
            animal.owner
        end
    end



end