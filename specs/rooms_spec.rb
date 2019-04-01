require 'minitest/autorun'
require "minitest/rg"
require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomsTest < MiniTest::Test

  def setup()

    @rooms = Rooms.new(@song_list, 25)
    @song1 = Song.new("Oklahoma")
    @song2 = Song.new("Twinkle little star")
    @song3 = Song.new("Battery")
    @song4 = Song.new("Swamped")
    @song_list = [@song1, @song2, @song3, @song4]
    @guest1 = Guest.new("Matthew",4, 100, "Swamped")
    @guest2 = Guest.new("Cameron",7, 250, "Oklahoma")
    @guest3 = Guest.new("Dagin", 6, 500, "I want to break free")




  end

  def test_song_list_is_available()
    assert_equal(4, @rooms.song_list())
  end

  def test_add_song_to_playlist()
    @song_list.add_song_to_playlist (@song1)
    assert_equal(1, @room.song_list_is_available)
  end

  def test_clear_song_list
    @room.song_list_is_available(@song1)
    @room.empty()
    assert_equal(0, @song_list.song_list_is_available())
  end

  def test_room_has_enough_space_true
    assert_equal(true,@guest1.number_in_group(@room_space))
  end

  def test_room_has_enough_space_false
    assert_equal(false,@guest2.number_in_group(@room_space))
  end

  def test_add_guest_to_room
    @room.test_add_guest_to_room(@guest2)
  assert_equal(1, @room.length())
  end

  def test_guest_leaves_room
    @room.add_guest_to_room(@guest1)
    @room.add_guest_to_room(@guest2)
    @room.guest_leaves_room(@guest1)
    assert_equal(1, @room.guest_count())

  end
end
