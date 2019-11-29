require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../guest')
require_relative('../songs')

class TestDrink < Minitest::Test

  def setup
    @room1 = Room.new("Room 1")
    @room2 = Room.new("Room 2")
    @room3 = Room.new("Room 3")
    @guest1 = Guest.new("Jimmy", 40)

    @song1 = Songs.new("Queen", "Don't stop me now")
    @song2 = Songs.new("ELO", "Mr Blue Sky")

  end

  def test_room_name
    assert_equal("Room 1", @room1.name)
  end

  def test_room_is_empty
  	assert_equal(0, @room1.get_room_size)
  end	

  def test_guest_has_gone_into_room
  	assert_equal(1, @room1.guest_goes_into_room(@guest1))
  end	

  def test_add_song_to_room
  	assert_equal(1, @room1.add_song_to_room(@guest1))
  end

  def test_song_is_in_room
  	assert_equal("Don't stop me now", @room1.presence_of_song_in_room(@song1))
  end

end
