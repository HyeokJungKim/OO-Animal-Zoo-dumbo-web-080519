class Zoo
  attr_reader :name, :location
  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select { |animal| animal.zoo == self }
  end

  def animal_species
    animal_array = self.animals.map do |animal|
      animal.species
    end
    animal_array.uniq
  end

  def animal_nicknames
    self.animals.map { |animal| animal.nickname }
  end

  def self.find_by_location(location_arg)
    self.all.select {|zoo| zoo.location == location_arg}
  end
end
