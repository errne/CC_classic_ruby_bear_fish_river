require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class BearTest < Minitest::Test

  def setup

    fish1 = Fish.new("Brenda")
    fish2 = Fish.new("Renda")
    fish3 = Fish.new("Bruda")
    fish4 = Fish.new("Da")
    fish5 = Fish.new("LeBrenda")
    fish6 = Fish.new("Bran")

    fishes = [fish1, fish2, fish3, fish4, fish5, fish6]
    @nile = River.new("Nile", fishes )
    @spring = River.new("Empty", [])
    @bear1 = Bear.new("Fluffy")

  end

  def test_bear_has_name
    assert_equal("Fluffy", @bear1.name)
  end

  def test_bear_has_stomach
    assert_equal([], @bear1.stomach)
  end

  def test_bear_roaring
    expected = @bear1.roar()
    assert_equal("Hrrghh", expected)
  end

  def test_food_count
    expected = @bear1.food_count()
    assert_equal(0, expected)
  end

  def test_bear_eats_fish
    @bear1.eat(@nile)
    assert_equal(1, @bear1.stomach.length)
    assert_equal("Brenda", @bear1.stomach[0].name)
    assert_equal(5, @nile.fish_count)
  end

  def test_bear_eats_fish__thrice
    @bear1.eat(@nile)
    @bear1.eat(@nile)
    @bear1.eat(@nile)
    assert_equal(3, @bear1.stomach.length)
    assert_equal("Bruda", @bear1.stomach[2].name)
    assert_equal(3, @nile.fish_count)
  end

  def test_bear_eats_fish__empty_river
    assert_equal("There are no fish in the river", @bear1.eat(@spring))
  end
end
