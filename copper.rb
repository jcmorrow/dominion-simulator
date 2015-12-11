require_relative 'treasure'

class Copper < Treasure

  def initialize
    super(name: 'Copper', value: 1, cost: 0)
  end

end