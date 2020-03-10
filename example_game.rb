class Game
  # attr_reader

  def initialize
    @players = []
  end

  def add_player(name)
    @players << Player.new("name")
  end

end
