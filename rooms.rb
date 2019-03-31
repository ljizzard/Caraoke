class Rooms

attr_reader :song_list, :room_space

  def initialize(song_list, room_space)
    @song_list = []
    @room_space = room_space
  end

  def song_list_is_available(song)
    return @song_list.length()
  end

def add_song_to_playlist(song)
  @song_list << song
end

def clear_song_list
  @song_list.clear()
end

def room_has_enough_space?()
  return @room_space >= @guest.number_in_group
end

def add_guest_to_room(room)
  @room.push(@guest)
end

def guest_leaves_room(guest)
  index = @guests.index(guest)
  @guests.slice!(index, 1)
end
end
# def find_song_by_name(song)
#     for song in @song_list
#       if song.name == name
#         return song
#       end
#     end
#     return "Song not found"
# end
