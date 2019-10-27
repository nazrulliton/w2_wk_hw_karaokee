require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestSong < MiniTest:: Test

  def setup
    @song1 = Song.new("Ooops")
    @song2=Song.new("Sweet Caroline")
    @song = [@song1, @song2]

  end

def test_get_song_name__song1
  assert_equal("Ooops", @song[0].name)
end

def test_get_song_name__song2
  assert_equal("Sweet Caroline", @song[1].name)
end



end
