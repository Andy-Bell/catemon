require 'game'

describe Game do
  subject(:game) { described_class.new(andy,matt) }
  let(:andy){ double(:player) }
  let(:matt){ double(:player, take_damage: true) }

  describe '#attack' do
    it 'one player damages the other' do
      expect(matt).to receive(:take_damage)
      game.attack(matt)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq(andy)
    end
  end

  describe'#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq(matt)
    end
  end

end
