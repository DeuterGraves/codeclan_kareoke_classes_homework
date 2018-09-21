require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup()
    @song1 = Song.new("When the Pin Hits the Shell", "Drive By Truckers")
    @song2 = Song.new("Golden Chain of Hate", "Blue Balls Deluxe")
    @song3 = Song.new("40 Miles to Vegas", "Southern Culture on the Skids")
  end

  def test_song_has_title()
    #binding.pry
    assert_equal("When the Pin Hits the Shell", @song1.title)
  end

  def test_song_has_band()
    assert_equal("Drive By Truckers", @song1.band)
    end




  # class end
end
