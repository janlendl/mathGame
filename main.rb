require_relative "message"
require_relative "logic"
require_relative "players"

def math_game
  player = Players.new
  livesOne, livesTwo, playing = player.players

  message = Message.new
  message.welcomeMessage
  while livesOne > 0 && livesTwo > 0
    logic = Logic.new
    one, two, sum = logic.calculation

    message.startMessage(one, two, playing)
    input = $stdin.gets.chomp.to_i

    livesOne, livesTwo, playing = logic.checkAnswer(input, sum, playing, livesOne, livesTwo)
  end
  message.endMatch(livesOne, livesTwo)
end

math_game
