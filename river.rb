class River
  attr_reader :name, :fishes

  def initialize(name, fish_array)
    @name = name
    @fishes = fish_array
  end

  def fish_count()
    return @fishes.length
  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end

end
