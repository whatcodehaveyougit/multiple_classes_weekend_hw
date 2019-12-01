require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../room')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("John", 20, "Don't stop me now")
    @guest2 = Guest.new("Jack", 20, "Don't stop me now")
    @guest3 = Guest.new("James", 30, "Don't stop me now")
  end

  def test_get_customer_name
    assert_equal("John", @guest1.name)
  end

  def test_get_customer_money
    assert_equal(20, @guest1.money)
  end

  def test_does_guest_have_money
    assert_equal(true, @guest1.does_guest_have_money(@guest1))
  end 

  def test_guest_favourite_song
    assert_equal("Don't stop me now", @guest1.favourite_song)
  end 
 
end
