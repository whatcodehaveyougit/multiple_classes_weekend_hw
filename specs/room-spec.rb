require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../guest')
require_relative('../songs')

class TestDrink < Minitest::Test

  def setup
    @room1 = Room.new("Room 1", 0)
    @room2 = Room.new("Room 2", 0)
    @room3 = Room.new("Room 3", 0)

    @guest1 = Guest.new("Jimmy", 40, "Don't stop me now")
    @guest2 = Guest.new("John", 123, "Don't stop me now")
    @guest3 = Guest.new("JimmyEatWorld", 123, "Don't stop me now")
    @guest4 = Guest.new("Jim", 123, "Don't stop me now")

    @song1 = Songs.new("Queen", "Don't stop me now")
    @song2 = Songs.new("ELO", "Mr Blue Sky")

    @songs = [@song1, @song2]
  end

  def test_room_name
    assert_equal("Room 1", @room1.name)
  end

  def test_room_is_empty
  	assert_equal(true, @room1.is_room_empty)
  end

  def test_number_of_guests_in_room
  	@room1.add_guest_to_room(@guest1)
  	@room1.add_guest_to_room(@guest2)
  	assert_equal(2, @room1.number_of_guests_in_room)
  end	

  def test_add_guest_to_room
  	assert_equal(1, @room1.add_guest_to_room(@guest1))
  end

  def test_remove_guest_from_room
  	@room1.add_guest_to_room(@guest1)
  	assert_equal(0, @room1.remove_guest_from_room)
  end

  def test_add_song_to_room
  	assert_equal(1, @room1.add_song_to_room(@song1))
  end

  def test_remove_song_fromn_room
   	@room1.add_song_to_room(@song1)
  	assert_equal(0, @room1.remove_song_from_room)
  end

  def test_song_is_in_room
  	assert_equal("Don't stop me now", @room1.presence_of_song_in_room(@song1))
  end

  def test_is_room_full_there_is_space
  	@room1.add_guest_to_room(@guest1)
	assert_equal("Yes pile in!", @room1.is_room_full)
  end

  def test_is_room_full_no_there_is_not_space
  	@room1.add_guest_to_room(@guest1)
  	@room1.add_guest_to_room(@guest2)
  	@room1.add_guest_to_room(@guest3)
  	@room1.add_guest_to_room(@guest4)
	assert_equal("Nah, sorry pal", @room1.is_room_full)
  end

  def test_guest_has_money
  	assert_equal(true, @guest1.does_guest_have_money(@guest1))
  end

  def test_add_entrance_fee_to_till
  	@room1.add_entrance_fee_to_till
  	assert_equal(20, @room1.add_entrance_fee_to_till)
  end

# When this was guest1 at the start it was not finding the method..
  def test_charge_guest_for_entry
  	assert_equal(30, @room1.charge_guest_for_entry(@guest1))
  end

  def test_cheer_when_favourite_song_is_on_song_list
  	assert_equal("Don't stop me now", @songs.cheer_when_favourite_song_is_on_song_list(@songs, @guest1))
  end

end
