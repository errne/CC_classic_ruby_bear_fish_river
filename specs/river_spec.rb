require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Brenda")
    fish2 = Fish.new("Renda")
    fish3 = Fish.new("Bruda")
    fish4 = Fish.new("Da")
    fish5 = Fish.new("LeBrenda")
    fish6 = Fish.new("Bran")

    @fishes = [@fish1, fish2, fish3, fish4, fish5, fish6]
  end

  def test_river_has_name
    nile = River.new("Nile", @fishes)
    assert_equal("Nile", nile.name)
  end

  def test_river_has_array
    nile = River.new("Nile", @fishes)
    assert_equal(@fishes, nile.fishes)
  end

  def test_river_fish_count
    nile = River.new("Nile", @fishes)
    assert_equal(6, nile.fish_count())
  end

  def test_remove_fish
    nile = River.new("Nile", @fishes)
    nile.remove_fish(@fish1)
    assert_equal(5, nile.fish_count)
  end


end
