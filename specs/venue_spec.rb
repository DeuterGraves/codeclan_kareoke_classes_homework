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
    @song5 = Song.new("Right Hand Man", "Hamilton Original Cast", "Dying is easy, young man, living is harder")
    @song6 = Song.new("Float On", "Modest Mouse", "I backed my car into a cop car the other day well, he just drove off - sometimes life's okay")
    @song7 = Song.new("Jack and Diane", "John Cougar Melloncamp", "A little ditty 'bout Jack & Diane Two American kids growing up in the heart land")

    @guest1 = Guest.new("Puck", 75, @song1)
    @guest2 = Guest.new("Jamie", 75, @song2)
    @guest3 = Guest.new("Karen", 75, @song3)
    @guest4 = Guest.new("Rob", 75, @song4)
    @guest5 = Guest.new("Celeste", 75, @song5)
    @guest6 = Guest.new("Taylor", 75, @song6)
    @guest7 = Guest.new("Amanda", 75, @song7)

    @room1 = Room.new([@guest1, @guest2], 3, 25, [])
    @room2 = Room.new([@guest1, @guest2, @guest3, @guest4, @guest5, @guest6], 8, 45, [])

    @venue = Venue.new("The Sing Song Room", [@room1], 0)
  end

  def test_venue_has_name()
    assert_equal("The Sing Song Room", @venue.name)
  end

  def test_venue_has_rented_rooms()
    assert_equal(1, @venue.rented_rooms.length())
  end

  def test_venue_has_till()
    assert_equal(0, @venue.till)
  end

  # increase till
  def test_increase_till()
    @venue.increase_till(15)
    assert_equal(15, @venue.till)
  end

  # release a room (remove room from the room array) remove guests from room.
  def test_release_room()
    @venue.release_room(@room1)
    assert_equal([], @room1.guests)
    assert_equal([], @venue.rented_rooms)
  end

  # rent a room (put a room in the rooms array, collect the money)
  def test_rent_a_room()
    @venue.rent_room(@room2,@guest2)
    assert_equal(2, @venue.rented_rooms.length())
    assert_equal(45, @venue.till)
    assert_equal(30, @guest2.wallet)
  end



  # end class
end
