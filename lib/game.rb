require_relative 'player'

class Game

  attr_reader :player_1, :player_2, :defender, :attacker


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
    @game = Game.new(player_1, player_2)
  end

  def set_turn
    player_select(1)
  end

  def over?
    return true if (player_1.hp == 0 || player_2.hp == 0)
    false
  end

  def self.store(game)
    @game = game
  end

  def self.instance
    @game
  end

  private

  attr_reader :turn_number

  def end_turn
    @turn_number += 1
  end

  def select_defender
    player_select(2)
  end

  def combatants
    @attacker = set_turn
    @defender = select_defender
  end

  def player_select(value)
    return @player_1 if parity(value)
    @player_2
  end

  def parity(value)
    return turn_number.odd? if value == 1
    turn_number.even?
  end
end
