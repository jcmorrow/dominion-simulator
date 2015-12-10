class Hand
  attr_reader :cards

  def initialize(deck)
    puts "Deck has #{deck.size} cards"
    @cards = deck.draw
    puts "Took #{@cards.size} from the deck, deck now has #{deck.size} cards remaining"
  end

  def treasure
    @cards.select { |c| c.name == 'Copper' } .count
  end

end