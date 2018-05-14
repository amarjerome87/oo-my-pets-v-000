class Dog

  attr_reader :name, :mood

  def initialize(name)
    @name = name
    self.mood = "nervous"
  end

  def mood=(mood)
    @mood = mood
  end


end
