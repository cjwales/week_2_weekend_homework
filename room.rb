class Room

  attr_reader :name, :till, :occupants, :song

  def initialize(name, till)
    @name = name
    @till = till
    @occupants = []
    @song = []
  end

  def add_guest_to_room(guest)
    @occupants.push(guest)
  end

  def remove_guest_from_room(guest)
    @occupants.delete(guest)
  end

  def add_song_to_room(song)
    @song.push(song)
  end

  def charge_customer(guest, amount)
    @till += amount
    guest.remove_money_from_guest(amount)
  end

  # def guest_reaction() <-- old bad method
  #   if @song == @occupants[0].fav_song
  #     @occupants[0].cheer()
  #   end
  # end

  def guest_reaction()
    @occupants.each { |occupant| occupant.fav_song == @song
      occupant.cheer() }
    end
  end
