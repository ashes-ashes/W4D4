require "deck"

RSpec.describe Deck do

  subject(:deck) { Deck.new }
  
  describe "initialize" do
    
    it "must have 52 cards" do
      expect(deck.cards.length).to eq(52)
    end

    it "must have all unique cards" do
      expect(deck.cards.uniq).to eq(deck.cards)
    end

  end

  describe "#draw" do

    it "should return n cards from the top of the deck" do
      
    end

    it "should remove the cards from the deck" do
      
    end

  end


end

