require_relative 'copper'
require_relative 'estate'

class Deck

  def initialize(options = {})
    @cards = options[:cards] || []
    7.times do
      @cards.push(Copper.new)
    end
    3.times do
      @cards.push(Estate.new)
    end
  end

  def output
    @cards.each do |card|
      puts card.name
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw(n_of_cards=5)
    return @cards.shift(n_of_cards)
  end

  def unshift(n)
    @cards.unshift()
  end

  def shift(n)
    @cards.shift(n)
  end

  def size
    @cards.size
  end

  def add_to_bottom(cards)
    @cards.push(cards).flatten!
  end

  def includes(card_type)
    return !(@cards.select { |c| c.name == card_type } .empty?)
  end

  def count(card_type)
    return @cards.select { |c| c.name == card_type } .count
  end

  def score
    self.class.score(@cards)
  end

  def self.score(cards)
    treasure_cards = cards.select(&:victory?)
    score_count = treasure_cards.inject(0) { |sum, card| sum += card.points }
    score_count
  end

end
