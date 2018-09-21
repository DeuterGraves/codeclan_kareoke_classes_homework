class Venue

  attr_reader :name
  attr_accessor :rented_rooms, :till

  def initialize(name, rented_rooms, till)
    @name = name
    @rented_rooms = rented_rooms
    @till = till
  end


  # class end
end
