class Guest

attr_reader :guest_name, :number_in_group, :wallet, :favourite_song

def initialize(guest_name, number_in_group, wallet, favourite_song)
  @guest_name = guest_name
  @number_in_group = number_in_group
  @wallet = wallet
  @favourite_song = favourite_song
end
end
