class Game

  attr_accessor :players, :ships

  def initialize(player)
  	add_player(player)
    @ships = []
  end

  def players
    @players ||= []
  end

  def add_player(player)
    raise "The game already has two players" if players.count >= 2
  	self.players << player
	end

  def add_ships(ship)
    @ships << ship
  end

  def take_turn
    # if cell.hit? is true -> stop rotation so player gets another turn
    @players.rotate!
    @players[0]
  end

  def whos_turn
    @players[0]
  end

end
