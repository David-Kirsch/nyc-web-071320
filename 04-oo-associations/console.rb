require 'pry'
require_relative './app/models/user'
require_relative './app/models/animal'
require_relative './app/models/shelter'


vlad = User.new("Vlad", 21, 1234)
jeff = User.new("Jeff", 21, 1234)
jenn = User.new("Jennifer", 21, 1234, "Jenn")
# jennifer = User.new("Jennifer", 21, 1234, "Jenny")

adopt_a_pet = Shelter.new("Adopt A Pet")
happy_days = Shelter.new("Happy Days")


bob = Animal.new("snake", "Bob", "hiss",nil, adopt_a_pet)
coco = Animal.new("dog", "Coco", "bark bark", jeff, adopt_a_pet)
momo = Animal.new("flying lemur", "momo", "slkdfjlsk", nil, happy_days)
sophie = Animal.new("husky", "sophie", "woof woof", jeff, happy_days)



# jenn.adopt_animal(bob)











binding.pry