require "player"


describe Player do
  subject(:player) { described_class.new("Anna") }
  describe "name" do
    it "returns the player name" do
      expect(player.name).to eq("Anna")
    end
  end

  describe "HP" do
    it "returns the current hitpoints" do
      expect(player.hp).to eq(60)
    end
  end

  describe "deduct" do
    it "reduces hitpoints by 10" do
      expect{ player.deduct(10) }.to change { player.hp }.by(-10)

    end
  end
end
