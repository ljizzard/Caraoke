require 'minitest/autorun'
require "minitest/rg"
require_relative("../guests")
class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Matthew",4, 100, "Swamped")
    @guest2 = Guest.new("Cameron",27, 250, "Oklahoma")
    @guest3 = Guest.new("Dagin", 6, 500, "I want to break free")
  end

  def test_guest_has_name
    assert_equal("Matthew", @guest1.guest_name)
  end

  def test_guest_has_cash
    assert_equal(250, @guest2.wallet)
  end


def test_guest_has_favourite_song
  assert_equal("Swamped", @guest1.favourite_song)
end

end
