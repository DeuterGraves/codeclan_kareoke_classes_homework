require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../song.rb")
require_relative("../guest.rb")
require_relative("../room.rb")

class RoomTest < MiniTest::Test

  def setup()

    song1 = Song.new("When the Pin Hits the Shell", "Drive By Truckers")
    song2 = Song.new("Golden Chain of Hate", "Blue Balls Deluxe")
    song3 = Song.new("40 Miles to Vegas", "Southern Culture on the Skids")
    song4 = Song.new("Alive", "Pearl Jam")
    song4 = Song.new("Copacabana", "Barry Manilow")

    guest1 = Guest.new("Puck", 75, song2)
    guest2 = Guest.new("Jamie", 75, song3)
    guest3 = Guest.new("Karen", 75, song4)
    guest3 = Guest.new("Rob", 75, song4)

    @room1 = Room.new([guest1, guest2, guest3], 3, 25)
  end

  def test_room_has_guests()
    assert_equal(3, @room1.guests.length())
  end

  def test_room_has_guest_limit()
    #binding.pry
    assert_equal(3, @room1.capacity)
  end

  def test_room_has_fee()
    assert_equal(25, @room1.rental)
  end




  # class end
end
