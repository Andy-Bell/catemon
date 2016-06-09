require 'game'

describe Game do
  subject(:game) { described_class.new(player_spy_1, player_spy_2) }
  let(:player_spy_1) { spy(:player_spy_1) }
  let(:player_spy_2) { spy(:player_spy_2) }

  describe "#attack" do
    it "checks deduct is called on player 2" do
      game.attack
      expect(player_spy_2).to have_received(:deduct)
    end
    it "checks deduct is called on player 1" do
      game.attack
      game.attack
      expect(player_spy_1).to have_received(:deduct)
    end
  end

  describe "#player_1" do
    it "responds to player_1" do
      expect{ game.player_1 }.not_to raise_error
    end
  end

  describe "set_turn" do
    it "returns player 1 when given turn one" do
      expect(game.set_turn).to eq player_spy_1
    end

    it "returns player 2 when given turn 2" do
      game.attack
      expect(game.set_turn).to eq player_spy_2
    end
  end
end
