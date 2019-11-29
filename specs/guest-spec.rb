require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../room')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("John", 20)
    @guest2 = Guest.new("Jack", 20)
    @guest3 = Guest.new("James", 30)
  end

  def test_get_customer_name
    assert_equal("John", @guest1.name)
  end

  def test_room_is_empty
    assert_equal(0, )
  end

 
end
