class Hand
  attr_reader :cards

  def initialize(deck)
    puts "Deck:#{deck.size}"
    @cards = deck.draw
    print_hand
  end

  def print_hand
    puts @cards.map { |card| card.name.upcase } .join(" ")
  end

  def treasure
    treasure_count = @cards.select { |c| c.name == 'Copper' } .count
    treasure_count += (@cards.select { |c| c.name == 'Silver' } .count * 2)
    treasure_count += (@cards.select { |c| c.name == 'Gold' } .count * 3)
    return treasure_count
  end

  def contains(card_type)
    return (@cards.select { |c| c.name == card_type } .count > 0)
  end

  def first(card_type)
      card = @cards.find { |c| c.name == card_type }
      @cards.delete_at(@cards.index(card) || @cards.length)
      return card
  end

  def add(cards)
    @cards += cards
    print_hand
  end

end