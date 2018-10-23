require('minitest/autorun')
require('minitest/rg')
require_relative('../river')

class RiverTest < Minitest::Test

  def test_river_has_name
    nile = River.new("Nile")
    assert_equal("Nile", nile.name)
  end


end
