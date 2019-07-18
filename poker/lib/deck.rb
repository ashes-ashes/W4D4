require "card.rb"

class Deck
  attr_reader :cards

  def self.create_deck
    Card.suits.map do |suit|
      Card.values.map do |value|
        Card.new(suit, value)
      end
     end.flatten
  end

  def initialize
    @cards = Deck.create_deck.shuffle
  end

  def draw(n)
    pile = []
    if n < cards.count
      n.times do |i|
        pile << cards.pop
      end  
    else
      raise "Too few cards in deck."
    end
    pile
  end

  def return(some_cards)
    some_cards.each do |card|
      cards.unshift(card)
    end
  end

end