require 'player'

describe Player do
  subject(:andy) {described_class.new("Andy")}
  subject(:matt) {described_class.new("Matt")}

  describe '#name' do
    it 'returns player name' do
      expect(andy.name).to eq ("Andy")
    end
  end

  describe '#hit_points' do
    it 'returns current hit points' do
      expect(andy.hit_points).to eq (60)
    end
  end

  describe '#take_damage' do
    it 'reduces hp by passed amount' do
      expect{ matt.take_damage(10) }.to change{ matt.hit_points }.by (-10)
    end
  end
end
