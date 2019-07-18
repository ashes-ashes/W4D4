require "card"

RSpec.describe Card do
  
  describe "initialize" do
    subject(:card) { Card.new(:spades, :ace) }
    it "create a card with suit and value" do
      expect(card.suit).to eq(:spades)
      expect(card.value).to eq(:ace)  
    end
  end
end

