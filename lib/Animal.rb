class Animal
  attr_reader :species, :weight, :zoo
  attr_accessor :weight
  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species_arg)
    self.all.select do |animal|
      animal.species == species_arg
    end
  end
end
