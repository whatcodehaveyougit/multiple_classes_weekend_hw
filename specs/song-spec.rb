require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../songs')

class TestSongs < Minitest::Test

  def setup
    @song1 = Songs.new("Queen", "Don't stop me now")
    @song2 = Songs.new("ELO", "Mr Blue Sky")
    @song3 = Songs.new("Proclaimers", "500 Miles")
    @song4 = Songs.new("View", "Same Jeans")
  end

  def test_get_artist
    assert_equal("Queen", @song1.artist)
  end


  def test_get_song
    assert_equal("Don't stop me now", @song1.song_name)
  end

end
