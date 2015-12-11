require 'byebug'
require_relative 'deck'
require_relative 'hand'

class Player
  attr_accessor :treasure, :deck

  def initialize
    @discard_pile = []
    @deck = Deck.new
    @deck.shuffle!
  end

  def take_turn
    @buys = 1
    @actions = 1
    @treasure = 0
    @hand = Hand.new(@deck)
    play_cards
    @treasure = @hand.treasure
    puts "I can buy something worth #{@treasure}"
    buy_something
    discard_hand
  end

  def buy_something
    
  end

  def play_cards

  end

  def buy(card_type)
    card = card_type.new
    @treasure = @treasure - card.cost
    @discard_pile << card
  end

  def discard_hand
    @discard_pile = @discard_pile + @hand.cards
    if(@deck.size < 5)
      @deck.add_to_bottom(@discard_pile.shuffle)
      @discard_pile = []
      puts "DECK SHUFFLED"
    end
  end

  def gain_actions(n)
    @actions = @actions + n
  end

  def draw_cards(n)
    @hand.add @deck.draw(n)
  end

  def score!
    @deck.add_to_bottom(@discard_pile.shuffle)
    return @deck.score
  end


end