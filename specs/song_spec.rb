require('minitest/autorun')
require("minitest/rg")
require_relative("../songs.rb")
require_relative("../rooms")


class SongTest < MiniTest::Test

  def setup

    @song1 = Song.new("Oklahoma")
    @song2 = Song.new("Twinkle little star")
    @song3 = Song.new("Battery")
    @song4 = Song.new("Swamped")

    @song_list = [@song1, @song2, @song3, @song4]
  end

def test_song_list_is_available
  assert_equal(4, @song_list.length())
end

def test_add_multiple_songs_to_playlist
  @song_list.add_to_song_list(@song1)
  @song_list.add_to_song_list(@song3)
  assert_equal(2, @song_list.length())
end

def test_clear_song_list
  @song_list.add_to_song_list(@song1)
  @song_list.add_to_song_list(@song3)
  assert_equal(0, @song_list.length())
end
end
