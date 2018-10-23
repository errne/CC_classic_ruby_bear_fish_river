require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < Minitest::Test

  def test_fish_has_name
    fish1 = Fish.new("Brenda")
    assert_equal("Brenda", fish1.name)
  end


end
