require_relative 'action'

class Smithy < Action
  def initialize
    super(cost: 4, name: "Smithy")
  end

  def play(player)
    player.draw_cards(3)
    puts "Smithy played!"
  end
end