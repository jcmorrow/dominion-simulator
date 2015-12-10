require_relative 'treasure'

class Copper < Treasure

  def initialize
    super(name: 'Copper', value: '1', cost: 0)
  end

  def play
    #add 1 to current player's money?
  end


end