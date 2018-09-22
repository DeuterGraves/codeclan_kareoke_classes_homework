require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup()

    @song1 = Song.new("Golden Chain of Hate", "Blue Balls Deluxe", "Whisky, whores and overtime, have taken her place, now she's gone...")
    @song2 = Song.new("40 Miles to Vegas", "Southern Culture on the Skids", "...Just our luck, look what just rolled up, a one-eyed man in a yellow tow truck...")
    @song3 = Song.new("Alive", "Pearl Jam", "Son, she said, have I got a little story for you...")
    @song4 = Song.new("Copacabana", "Barry Manilow", "Her name was Lola, she was a showgirl with yellow feathers in her hair and a dress cut down to there...")

  end

  def test_song_has_title()
    #binding.pry
    assert_equal("Golden Chain of Hate", @song1.title)
  end

  def test_song_has_band()
    assert_equal("Blue Balls Deluxe", @song1.band)
  end

  def test_song_has_lyric()
    assert_equal("...Just our luck, look what just rolled up, a one-eyed man in a yellow tow truck...", @song2.lyric)
  end

  # def test_play_song()
  #   assert_equal("Her name was Lola, she was a showgirl with yellow feathers in her hair and a dress cut down to there...", play_song(@song4))
  #
  # end




  # class end
end
