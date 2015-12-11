require_relative 'treasure'

class Silver < Treasure

  def initialize
    super(name: 'Silver', value: 2, cost: 3)
  end

end