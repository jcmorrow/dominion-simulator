Dir["./*.rb"].each {|file| require file }

player = BigMoneyPlayer.new
puts '#######NEW GAME#######'
25.times do |i|
  puts "=========TURN #{i + 1}========="
  puts player.deck.count("Smithy") <= player.deck.count("Village")
  player.take_turn
end
puts player.score!
