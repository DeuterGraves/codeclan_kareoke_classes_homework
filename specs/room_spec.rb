require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../song.rb")
require_relative("../guest.rb")
require_relative("../room.rb")

class RoomTest < MiniTest::Test

  def setup()

    song1 = Song.new("Golden Chain of Hate", "Blue Balls Deluxe", "Whisky, whores and overtime, have taken her place, now she's gone...")
    song2 = Song.new("40 Miles to Vegas", "Southern Culture on the Skids", "...Just our luck, look what just rolled up, a one-eyed man in a yellow tow truck...")
    song3 = Song.new("Alive", "Pearl Jam", "Son, she said, have I got a little story for you...")
    song4 = Song.new("Copacabana", "Barry Manilow", "Her name was Lola, she was a showgirl with yellow feathers in her hair and a dress cut down to there...")

    @guest1 = Guest.new("Puck", 75, song1)
    @guest2 = Guest.new("Jamie", 75, song2)
    @guest3 = Guest.new("Karen", 75, song3)
    @guest3 = Guest.new("Rob", 75, song4)

    @room1 = Room.new([@guest1, @guest2], 3, 25, [])
  end

  def test_room_has_guests()
    assert_equal(2, @room1.guests.length())
  end

  def test_room_has_guest_limit()
    #binding.pry
    assert_equal(3, @room1.capacity)
  end

  def test_room_has_fee()
    assert_equal(25, @room1.rental)
  end

  #check guests into rooms
  def test_check_guests_in()
    @room1.check_guest_in(@guest3)
    assert_equal(3, @room1.guests.length())
  end

  # check guests out of rooms
  def test_check_guests_out()
    @room1.check_guest_out(@guest2)
    assert_equal(1, @room1.guests.length())
  end

  # add songs to room

  # def test_play_song()
  #   assert_equal("Her name was Lola, she was a showgirl with yellow feathers in her hair and a dress cut down to there...", play_song(@song4))
  #
  # end


  # class end
end
