class Card
  attr_reader :type, :name, :cost

  def initialize(options = {})
    @type = options[:type]
    @cost = options[:cost] || 0
    @name = options[:name]
  end

  def play(player)
  end

end