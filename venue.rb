class Venue

  attr_reader :name
  attr_accessor :rented_rooms, :till

  def initialize(name, rented_rooms, till)
    @name = name
    @rented_rooms = rented_rooms
    @till = till
  end

  def increase_till(price)
    @till += price
  end

  def release_room(room)
    room.guests_go_home()
    @rented_rooms.clear
  end

  def rent_room(room,guest)
    price = room.rental
    @rented_rooms << room
    increase_till(price)
    guest.decrease_wallet(price)
  end



  # class end
end
