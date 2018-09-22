require("pry")
require_relative("./song.rb")
require_relative("./guest.rb")
require_relative("./room.rb")
require_relative("./venue.rb")

song1 = Song.new("Golden Chain of Hate", "Blue Balls Deluxe", "Lyrics: Golden Chain of Hate")
song2 = Song.new("Two Minutes to Midnight", "Iron Maiden", "Lyrics: Two Minutes to Midnight")
song3 = Song.new("Alive", "Pearl Jam", "Lyrics: Alive")
song4 = Song.new("Copacabana", "Barry Manilow", "Lyrics: Copacabana")
song5 = Song.new("Right Hand Man", "Hamilton Original Cast", "Lyrics: Right Hand Man")
song6 = Song.new("Float On", "Modest Mouse", "Lyrics: Float On")
song7 = Song.new("Jack and Diane", "John Cougar Melloncamp", "Lyrics: Jack & Diane")

guest1 = Guest.new("Puck", 75, song1)
guest2 = Guest.new("Jamie", 75, song2)
guest3 = Guest.new("Karen", 75, song3)
guest4 = Guest.new("Rob", 75, song4)
guest5 = Guest.new("Celeste", 75, song5)
guest6 = Guest.new("Taylor", 75, song6)
guest7 = Guest.new("Amanda", 75, song7)

room1 = Room.new([guest1, guest2], 3, 25, [])
room2 = Room.new([guest1, guest2, guest3, guest4, guest5, guest6], 8, 45, [])

venue = Venue.new("The Sing Song Room", [room1], 0)

current_occupants = room1.guests
names = []
current_occupants.each {|occupant| names << occupant.name}

print_names = names.reduce {|list, occupant| list + " and " + occupant }

# p names

puts "Current number of guests in Room 1 at The Sing Song Room: #{room1.guests.length()}, they are #{print_names}.  The maximum capactiy of Room 1 is: #{room1.capacity}."
puts " "

puts "Now, Karen will check in."
puts " "

room1.check_guest_in(guest3)

new_capacity = room1.guests.length()

puts "The new number of guests in Room 1 at the Sing Song Room is: #{new_capacity}.  Karen's husband Rob was able to come after all! (He previously RSVPed no because of a work engagement). He'll now attempt to check in...but we'll get the error message"
puts " "

puts room1.check_guest_in(guest4)
