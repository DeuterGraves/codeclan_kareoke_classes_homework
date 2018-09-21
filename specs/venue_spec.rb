require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../song.rb")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../venue.rb")

class VenueTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Golden Chain of Hate", "Blue Balls Deluxe", "Whisky, whores and overtime, have taken her place, now she's gone...")
    @song2 = Song.new("40 Miles to Vegas", "Southern Culture on the Skids", "...Just our luck, look what just rolled up, a one-eyed man in a yellow tow truck...")
    @song3 = Song.new("Alive", "Pearl Jam", "Son, she said, have I got a little story for you...")
    @song4 = Song.new("Copacabana", "Barry Manilow", "Her name was Lola, she was a showgirl with yellow feathers in her hair and a dress cut down to there...")

    @guest1 = Guest.new("Puck", 75, @song1)
    @guest2 = Guest.new("Jamie", 75, @song2)
    @guest3 = Guest.new("Karen", 75, @song3)
    @guest4 = Guest.new("Rob", 75, @song4)

    @room1 = Room.new([@guest1, @guest2], 3, 25, [])
    @room2 = Room.new([], 6, 45, [])

    @venue = Venue.new("The Sing Song Room", [@room1], 0)
  end

  def test_venue_has_name()
    #binding.pry
    assert_equal("The Sing Song Room", @venue.name)
  end

  def test_venue_has_rented_rooms()
    assert_equal(1, @venue.rented_rooms.length())
  end

  def test_venue_has_till()
    assert_equal(0, @venue.till)
  end

  # increase till (will need decrease wallet for guest)
  def test_increase_till()
    @venue.increase_till(15)
    assert_equal(15, @venue.till)
  end

  #find room rate
  # def find_room_rate()
  #   assert_equal(25, @room1.rental)
  # end

  # release a room (remove room from the room array) remove guests from room.
  def release_room()
  end
  # rent a room (put a room in the rooms array, collect the money)
# find room rate
# increase till by room rate




  # end class
end
