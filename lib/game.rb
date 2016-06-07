class Game
  attr_reader :player_1, :player_2
  def initialize(player1,player2)
    @player_1 = player1
    @player_2 = player2
  end
  def attack(player)
    player.take_damage(10)
  end

end
