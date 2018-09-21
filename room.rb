class Room

attr_accessor :guests, :rental, :playlist
attr_reader :capacity

  def initialize(guests, capacity, rental, playlist)
    @guests = guests
    @capacity = capacity
    @rental = rental
    @playlist = playlist
  end

  def check_guest_in(guest)
    @guests << guest
  end

  def check_guest_out(guest)
    @guests.delete(guest)
  end

  # def play_song(song)
  #
  # end


  # class end
end
