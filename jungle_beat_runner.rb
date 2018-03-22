require './lib/jungle_beat'
puts "Please enter the beats you want to play"
answer = gets.chomp
jb = JungleBeat.new
jb.append(answer)
jb.play
