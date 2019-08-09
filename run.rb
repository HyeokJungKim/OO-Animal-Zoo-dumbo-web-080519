require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


bronx_zoo = Zoo.new("Bronx Zoo", "Bronx")
queens_zoo = Zoo.new("Queens Zoo", "Queens")

cat = Animal.new("Cat", 40, "Kitty Catty", bronx_zoo)
dog = Animal.new("Dog", 20, "Doggo", bronx_zoo)
lion = Animal.new("Lion", 15, "Simba", queens_zoo)
penguin = Animal.new("Penguin", 11, "Pingu", queens_zoo)
elephant = Animal.new("Elephant", 7, "Dumbo", queens_zoo)



#Test your code here


binding.pry
puts "done"
