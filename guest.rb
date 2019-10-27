class Guest

attr_reader :name, :song, :cash

def initialize(name, song, cash)
  @name = name
  @song = []
  @cash = cash

end

def cust_pays_entree_fee(amount)
@cash -= amount
end




end
