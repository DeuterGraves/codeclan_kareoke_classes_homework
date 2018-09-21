class Guest

  attr_reader :name, :favorite_song
  attr_accessor :wallet

  def initialize(name, wallet, favorite_song)
    @name = name
    @wallet = wallet
    @favorite_song = favorite_song
  end

  def decrease_wallet(price)
    @wallet -= price
  end

# class end
end
