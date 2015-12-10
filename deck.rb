require_relative 'copper'
require_relative 'estate'

class Deck

  def initialize(options = {})
    @cards = []
    7.times do
      @cards.push(Copper.new)
    end
    3.times do
      @cards.push(Estate.new)
    end
  end


end