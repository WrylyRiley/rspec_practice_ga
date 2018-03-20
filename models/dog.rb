class Dog
  attr_accessor :name
  attr_reader :hunger_level

  def initialize(name, hunger_level)
    @name = name
    @hunger_level = hunger_level
  end

  def set_hunger_level(hunger_level)
    if hunger_level < 0
      @hunger_level = 0
    else
      @hunger_level = hunger_level
    end
  end
end
