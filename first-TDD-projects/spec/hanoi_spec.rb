require "hanoi"

RSpec.describe TowersofHanoi do
  
  subject(:game) { TowersofHanoi.new }

  describe "#initialize" do

    it "should have three piles of discs" do
      expect(game.piles).to be_a(Array)
      expect(game.piles.length).to eq(3)
    end

    it "should start with one tower and two empty piles" do
      expect(game.piles[0].length).to eq(4)
      expect(game.piles[1].length).to eq(0)
      expect(game.piles[2].length).to eq(0) 
    end

    it "should have 4 different-sized discs" do
      expect(game.piles[0]).to contain_exactly(1, 2, 3, 4)
    end

  end

  describe "#move" do

    it "should take in two indices" do
      expect{game.move(0, 1)}.to_not raise_error
    end

    context "valid move" do 
      it "should return true" do

      end
      
      it "should move the disc to the move the disc to the new pile" do
      end
    end

    context "valid move" do 
      it "should return false" do

      end
      
      it "should not move the disc" do

      end
    end    

  end

  describe "#won?" do
    subject(:winning_game) {double( "TowersofHanoi", piles: [[],[],[1, 2, 3, 4]] )}
    it "should return true if we won" do
      expect(winning_game.won?).to eq(true)
    end

    it "should return false if the last pile is not" do
      expect(winning_game.won?).to eq(false)
    end
  
  end
end