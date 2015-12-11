require_relative 'player'

class BigMoneyPlayer < Player

  def buy_something
    case
    when @treasure == 3
      puts "I will buy a village"
      buy(Village)
    when @treasure == 4 || @treasure ==  5
      puts "I will buy a smithy"
      buy(Smithy)
    when @treasure == 6
      puts "I will buy a gold"
      buy(Gold)
    when @treasure >= 8
      puts "I will buy a province"
      buy(Province)
    else
      puts "I will buy nothing and try to engender pity in my opponents"
    end
  end

  def play_cards
    played = false
    if(@hand.contains("Smithy") && @actions >= 2)
      smithy = @hand.first("Smithy")
      smithy.play(self)
      @discard_pile << smithy
      @actions = @actions - 1
      played = true
    elsif(@hand.contains("Village"))
      village = @hand.first("Village")
      village.play(self)
      @discard_pile << village
      @actions = @actions - 1
      played = true
    elsif(@hand.contains("Smithy"))
      smithy = @hand.first("Smithy")
      smithy.play(self)
      @discard_pile << smithy
      @actions = @actions - 1
      played = true
    end
    if(@actions > 0 && played)
      play_cards
    end
  end

end