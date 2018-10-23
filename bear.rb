class Bear
  attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def roar()
    return "Hrrghh"
  end

  def add_fish_to_stomach(fish)
    @stomach << fish
  end

  def eat(river)
    if river.fishes.length > 0
      add_fish_to_stomach(river.fishes[0])
      river.remove_fish()
    else
      return "There are no fish in the river"
    end
  end

  def food_count()
    return @stomach.length
  end

end
