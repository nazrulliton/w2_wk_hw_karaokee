class Room

attr_reader :room, :guests, :songs, :room_limit, :current_capacity, :entree_fee, :till

def initialize(room,guest,song,room_limit,current_capacity, entree_fee, till)
@room = room
@guests= []
@songs = []
@room_limit = 2
@current_capacity = 0
@entree_fee = 5
@till = 0

end

def add_guest_to_room(customer)
  if @current_capacity < @room_limit
 @guests.push (customer)
 # guest.cash -= @entree_fee
 @current_capacity += 1
 @till += @entree_fee
end
return "Room Full"
end

def remove_guest_to_room(customer)
 @guests.delete (customer)
end

def add_song_to_room(song)
  @songs.push(song)
end




end
