Dir["./*.rb"].each {|file| require file }

player = BigMoneyPlayer.new

25.times do |i|
  player.take_turn
  puts "=========TURN #{i}========="
end
puts player.score!
