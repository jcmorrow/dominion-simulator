require_relative 'card'

class Treasure < Card
  attr_reader :value

  def initialize(options = {})
    @value = options[:value]
    super(options)
  end

  def play(player)
    player.treasure = player.treasure + @value
  end

  def treasure?
    true
  end

end
