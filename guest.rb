class Guest

  attr_reader :name, :fav_song, :wallet

  def initialize(name, fav_song, wallet)

    @name = name
    @fav_song = fav_song
    @wallet = wallet

  end

  def remove_money_from_guest(amount)
    @wallet -= amount
  end

  def cheer()
    return "Whoo!"
  end

end
