require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_spy) { spy(:player_spy) }

  describe "#attack" do
    it "checks deduct is called on player" do
      game.attack(player_spy)
      expect(player_spy).to have_recieved(:deduct)
    end
  end
end
