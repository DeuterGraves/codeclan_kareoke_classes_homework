class Room

attr_accessor :guests, :rental, :playlist
attr_reader :capacity

  def initialize(guests, capacity, rental, playlist)
    @guests = guests
    @capacity = capacity
    @rental = rental
    @playlist = playlist
  end

  def add_guest(guest)
    @guests << guest
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def add_song_to_playlist(song)
    @playlist << song
  end

  def check_guest_in(guest)
    if @guests.length() < @capacity
      add_guest(guest)
    else
      return "Woah Nelly, there's too many people here!"
    end
  end
  # def play_song(song)
  #
  # end


  # class end
end
