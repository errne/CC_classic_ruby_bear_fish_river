require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FistTest < Minitest::Test

  def fish_has_name
    fish1 = Fish.new("Brenda")
    assert_equal("Brenda", fish1.name)
  end


end
