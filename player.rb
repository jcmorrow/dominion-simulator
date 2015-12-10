require 'byebug'
require_relative 'deck'
require_relative 'hand'

class Player

  def initialize
    @discard_pile = []
    @deck = Deck.new
    @deck.shuffle!
  end

  def take_turn
    hand = Hand.new(@deck)
    puts "This hand has #{hand.treasure} treasure in it!"
    @discard_pile = @discard_pile + hand.cards
    if(@deck.size < 5)
      @deck.add_to_bottom(@discard_pile.shuffle)
      @discard_pile = []
      puts "DECK SHUFFLED"
    end
  end


end