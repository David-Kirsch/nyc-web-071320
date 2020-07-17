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
            if(animal.owner)
                animal
            end
        end
    end

    def find_by_shelter(shelter_name)
        Animal.all.select do |animal|
            animal.shelter == shelter_name
        end
    end



end