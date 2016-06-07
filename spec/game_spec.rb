require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:andy){ double(:andy) }
  let(:matt){ double(:matt, take_damage: true) }

  describe '#attack' do
    it 'one player damages the other' do
      expect(matt).to receive(:take_damage)
      game.attack(matt)
    end
  end
end
