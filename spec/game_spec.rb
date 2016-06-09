require 'game'

describe Game do
  subject(:game) { described_class.new(player_spy, player_spy) }
  let(:player_spy) { spy(:player_spy) }

  describe "#attack" do
    it "checks deduct is called on player" do
      game.attack
      expect(player_spy).to have_recieved(:deduct)
    end
  end

  describe "player_1" do
    it "responds to player_1" do
      expect{ game.player_1 }.not_to raise_error
    end
  end
end
