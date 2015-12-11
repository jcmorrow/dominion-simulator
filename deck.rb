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

  def score
    puts @cards.map { |card| card.name.upcase } .join(" ")

    score_count = @cards.select { |c| c.name == 'Estate' } .count
    score_count += (@cards.select { |c| c.name == 'Dutchy' } .count * 3)
    score_count += (@cards.select { |c| c.name == 'Province' } .count * 6)
    return score_count
  end

end