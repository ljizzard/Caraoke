class Song

  attr_reader :song_list

  def initialize(song_list)
    @song_list = []
  end

def add_to_song_list
  @song_list.push(@song)
end

def clear_song_list()
  @song_list.clear()
end
end
