require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')


class RoomTest < MiniTest::Test

  def setup()

    @song3 = Song.new("RICKY")
    @room1 = Room.new("Zebra Room", 100)
    @room2 = Room.new("Monkey Room", 200)
    @room3 = Room.new("Blue Room", 50)
    @guest1 = Guest.new("Neil", @song3, 10)
    @song1 = Song.new("Kim & Jessie")


  end

  def test_get_room_name()
    assert_equal("Zebra Room", @room1.name)
  end

  def test_add_guest_to_room()
    @room1.add_guest_to_room(@guest1)
    assert_equal(1, @room1.occupants.length())
  end

  def test_remove_guest_from_room()
    @room1.remove_guest_from_room(@guest1)
    assert_equal(0, @room1.occupants.length())
  end

  def test_add_song_to_room()
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.song.length())
  end

  def test_get_till_balance()
    assert_equal(100, @room1.till)
  end

  def test_room_charge_customer()
    @room1.charge_customer(@guest1, 5)
    assert_equal(5, @guest1.wallet)
    assert_equal(105, @room1.till)
  end

  def test_guest_reaction()
    @room1.add_song_to_room(@song3)
    @room1.add_guest_to_room(@guest1)
    @room1.guest_reaction()
    assert_equal("Whoo!", @guest1.cheer())
  end

end
