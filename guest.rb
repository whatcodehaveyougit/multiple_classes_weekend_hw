class Guest

attr_reader :name, :money, :favourite_song

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def does_guest_have_money(guest)
    if guest.money > 10
      return true
    else
      return false
    end 
  end
end
