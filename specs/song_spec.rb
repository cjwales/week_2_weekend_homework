require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup()

    @song1 = Song.new("RICKY")
    @song2 = Song.new("With A Little Help From My Friends")
    @song3 = Song.new("Kim & Jessie")

  end

  def test_get_song_name()
    assert_equal("RICKY", @song1.name)
  end

end
