require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestRoom < MiniTest:: Test


def setup
@room = Room.new("Black Ace", [], [], 3, 0, 5,0)





end

def test_get_room_name
assert_equal("Black Ace", @room.room)
end

def test_get_room_guest
assert_equal([], @room.guests)
end

def test_get_room_song
assert_equal([], @room.songs)
end

def test_get_room_limit
  assert_equal(2,@room.room_limit)
end

def test_get_current_capacity
  assert_equal(0, @room.current_capacity)
end
def test_what_is_entree_fee
assert_equal(5,@room.entree_fee)

end

def test_current_till_balance
  assert_equal(0,@room.till)
end

def test_add_guest_to_room
@room.add_guest_to_room(@guest1)
assert_equal(1,@room.guests.count)
assert_equal(1,@room.current_capacity)

end

def test_remove_guest_to_room
@room.remove_guest_to_room(@guest1)
assert_equal(0,@room.guests.count)
assert_equal(0,@room.current_capacity)

end

def test_add_song_to_room
@room.add_song_to_room(@song1)
assert_equal(1,@room.songs.count)
end

def test_room_capacity_works
  @room.add_guest_to_room(@guest1)
  @room.add_guest_to_room(@guest2)
assert_equal(2, @room.current_capacity)
end

def test_is_till_taking_entrance_fee
@room.add_guest_to_room(@guest1)
assert_equal(5,@room.till)
end


# def test_room_overcapity
#   @guests =
#   assert_equal("Room Full", @room.add_guest_to_room(@guest1,@guest2,@guest3))
#   end
end
