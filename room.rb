class Room

  attr_reader :name, :guests


  def initialize(name, guests = [], songs = [])
    @name = name
    @guests = guests
    @songs = songs
  end

  def get_room_size
   return @guests.length
  end

  def guest_goes_into_room(guest)
    @guests.push(guest)
    return @guests.length
  end

  def add_song_to_room(song)
     @songs.push(song)
     return @songs.length
  end 

  def presence_of_song_in_room(song)
    song.song_name
  end 



end
