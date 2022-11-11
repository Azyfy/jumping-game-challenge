require_relative "jumping_game"

game = JumpingGame.new

File.foreach("games.txt") do |line|
    array = line.split(",").map(&:to_i)
    game.start(*array)
end

puts "__________________________________________________"

game.start(*[1,1,-2])
game.start(2,0,1)
game.start(-1, 0)
game.start(0, -2)
game.start(4/2, 0, 0-1)