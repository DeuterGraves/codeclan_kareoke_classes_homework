class Guest

  attr_reader :name, :favorite_song
  attr_accessor :wallet

  def initialize(name, wallet, favorite_song)
    @name = name
    @wallet = wallet
    @favorite_song = favorite_song
  end

# class end
end
