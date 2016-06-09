require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack
    player_2.deduct(10)
  end

  def self.build(name_1, name_2)
    player_1 = Player.new(name_1)
    player_2 = Player.new(name_2)
    new(player_1, player_2)
  end
end
