require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../song.rb")
require_relative("../guest.rb")

class SongTest < MiniTest::Test

def setup()


  song1 = Song.new("Golden Chain of Hate", "Blue Balls Deluxe", "Whisky, whores and overtime, have taken her place, now she's gone...")
  song2 = Song.new("40 Miles to Vegas", "Southern Culture on the Skids", "...Just our luck, look what just rolled up, a one-eyed man in a yellow tow truck...")
  song3 = Song.new("Alive", "Pearl Jam", "Son, she said, have I got a little story for you...")
  song4 = Song.new("Copacabana", "Barry Manilow", "Her name was Lola, she was a showgirl with yellow feathers in her hair and a dress cut down to there...")

  @guest1 = Guest.new("Puck", 75, song1)
  @guest2 = Guest.new("Jamie", 75, song2)
  @guest3 = Guest.new("Karen", 75, song3)
  @guest3 = Guest.new("Rob", 75, song4)

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
