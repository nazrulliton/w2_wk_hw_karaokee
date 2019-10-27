require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestGuest < MiniTest:: Test

def setup
@guest1 = Guest.new("Tom",[],100)
@guest2 = Guest.new("Kevin", [], 200)
@guest3 = Guest.new("Lebon", [], 50)
@guest = [@guest1, @guest2, @guest3]
end

def test_get_name
 assert_equal("Tom",@guest1.name)
end

def test_get_song
 assert_equal([],@guest1.song)
end

def test_get_guest_cash
  assert_equal(100,@guest1.cash)
end

def test_cust_pays_entree_fee
  @entree_fee = 5
@guest[0].cust_pays_entree_fee(@entree_fee)
assert_equal(95,@guest[0].cash)

end



end
