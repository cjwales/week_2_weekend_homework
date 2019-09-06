require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test

  def setup()

    @guest1 = Guest.new("Neil", "Kim & Jessie", 10)
    @guest2 = Guest.new("Chris", "RICKY", 5)
    @guest3 = Guest.new("Louie", "With A Little Help From My Friends", 0)

  end

  def test_get_guest_name()
    assert_equal("Neil", @guest1.name)
  end

  def test_get_guest_fav_song()
    assert_equal("RICKY", @guest2.fav_song)
  end

  def test_get_wallet_balance()
    assert_equal(10, @guest1.wallet)
  end

  def test_remove_money_from_guest()
    @guest1.remove_money_from_guest(5)
    assert_equal(5, @guest1.wallet)
  end

end
