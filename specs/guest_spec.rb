require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test

  def setup()

    @guest1 = Guest.new("Neil", "Kim & Jessie")
    @guest2 = Guest.new("Chris", "RICKY")
    @guest3 = Guest.new("Louie", "With A Little Help From My Friends")

  end


end
