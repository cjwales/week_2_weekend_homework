require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')


class RoomTest < MiniTest::Test

def setup()

@room1 = Room.new("Zebra Room")
@room2 = Room.new("Sun Room")
@room3 = Room.new("Blue Room")


end



end