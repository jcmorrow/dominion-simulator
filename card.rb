class Card
  attr_reader :type, :name, :cost

  def initialize(options = {})
    @type = options[:type]
    @cost = options[:cost] || 0
    @name = options[:name]
  end

  def play(player)
    raise RunTimeError, "play is not defined for #{self.class}"
  end

  def treasure?
    false
  end

  def victory?
    false
  end

end
