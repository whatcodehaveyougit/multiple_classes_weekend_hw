class Room

  attr_reader :name, :guests


  def initialize(name, till, guests = [], songs = [])
    @name = name
    @till = till
    @guests = guests
    @songs = songs
  end

  def is_room_empty
     if @guests.length == 0
      return true
    else
      return false
    end
  end

  def number_of_guests_in_room
    return @guests.length
  end

  def add_guest_to_room(guest)
    @guests.push(guest)
    return @guests.length
  end

  def remove_guest_from_room
    @guests.pop
     return @guests.length
  end

  def add_song_to_room(song)
     @songs.push(song)
     return @songs.length
  end 

  def remove_song_from_room
    @songs.pop
    return @songs.length
  end 

  def presence_of_song_in_room(song)
    song.song_name
  end 

  def is_room_full
    if number_of_guests_in_room <= 3
      return "Yes pile in!"
    else
      return "Nah, sorry pal"
    end
  end 

# Having this in the guest did not work as it was not accessible in room 
# So complete control is with the room -- better?
  def does_guest_have_money(guest)
    if guest.money > 10
      return true
    else
      return false
    end 
  end

  def add_entrance_fee_to_till()
    return @till += 10
  end

# Having some problems accessing the inner values of the instantiated objects
  def charge_guest_for_entry(guest)
    if is_room_full == "Yes pile in!"
      if does_guest_have_money(guest) == true
        updated_money = guest.money - 10
        add_entrance_fee_to_till
        return updated_money
      end
    end
  end

 def cheer_when_favourite_song_is_on_song_list(song_list, guest)
  for songs in song_list
    
  end
 end


end
