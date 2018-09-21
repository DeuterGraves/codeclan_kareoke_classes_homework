require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../song.rb")
require_relative("../guest.rb")

class SongTest < MiniTest::Test

def setup()

  song1 = Song.new("When the Pin Hits the Shell", "Drive By Truckers")
  song2 = Song.new("Golden Chain of Hate", "Blue Balls Deluxe")
  song3 = Song.new("40 Miles to Vegas", "Southern Culture on the Skids")

  @guest1 = Guest.new("Puck", 75, song2)

end

def test_guest_has_name()
  assert_equal("Puck", @guest1.name)
end

def test_guest_has_wallet()
  assert_equal(75, @guest1.wallet)
end

def test_guest_has_fave_song()
  assert_equal("Golden Chain of Hate", @guest1.favorite_song.title)
end


# class end
end
