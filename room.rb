class Room

  attr_reader :name, :occupants, :song

  def initialize(name)
    @name = name
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
end
