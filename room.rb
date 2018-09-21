class Room

attr_accessor :guests, :rental
attr_reader :capacity

  def initialize(guests, capacity, rental)
    @guests = guests
    @capacity = capacity
    @rental = rental

  end




  # class end
end
