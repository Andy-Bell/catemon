require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :turn_number, :defender, :attacker

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn_number = 1
    @defender
    @attacker
  end

  def attack
    combatants
    @defender.deduct(10)
    end_turn
  end

  def self.build(name_1, name_2)
    player_1 = Player.new(name_1)
    player_2 = Player.new(name_2)
    new(player_1, player_2)
  end

  def set_turn
    return @player_1 if turn_number.odd?
    @player_2
  end

  private

  def end_turn
    @turn_number += 1
  end

  def select_defender
    if set_turn == player_1
      @player_2
    else
      @player_1
    end
  end

  def combatants
    @attacker = set_turn
    @defender = select_defender
  end
end
