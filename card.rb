class Card
  attr_reader :type, :name, :cost

  def initialize(options = {})
    @type = options[:type]
    @cost = options[:cost]
    @name = options[:name]
  end

  def play
  end

end