require_relative 'action'

class Village < Action
  def initialize
    super(name: "Village", cost: 3)
  end

  def play(player)
    player.gain_actions(2)
    player.draw_cards(1)
    puts "Village played!"
  end
end