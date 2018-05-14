require 'pry'
class Owner

attr_reader :species
attr_accessor :name, :pets

@@owners = []

def initialize(name)
  @name = name
  @pets = {:fishes => [], :cats => [], :dogs => []}
  @@owners << self
  @species = "human"
end

def self.all
  @@owners
end

def self.count
  @@owners.size
end

def self.reset_all
  @@owners.clear
end

def say_species
  return "I am a #{@species}."
end

def name=(name)
  @name = name
end

def pets
  @pets
end

def buy_fish(name)
  pets[:fishes] <<  Fish.new(name)
end

def buy_cat(name)
  name = Cat.new(name)
  @pets.each do |p|
    p[1] << name
  end
end

def buy_dog(name)
  name = Dog.new(name)
  @pets.each do |p|
    p[1] << name
  end
end

def walk_dogs
  @pets[:dogs].each do |d|
    d.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |c|
    c.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |f|
    f.mood = "happy"
  end
end

def sell_pets
  @pets.each do |pet,key|
    key.each do |pets|
      pets.mood = "nervous"
    end
  end
  @pets.clear
end

def list_pets
  return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end
