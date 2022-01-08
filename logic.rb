class Logic
  def initialize()
    @numberOne = rand(1...20)
    @numberTwo = rand(1...20)
    @answer = @numberOne + @numberTwo
  end

  def calculation
    return @numberOne, @numberTwo, @answer
  end
  
  def checkAnswer(input, sum, playing, livesOne, livesTwo)
    play = playing
    l1 = livesOne
    l2 = livesTwo
    if input == sum
      puts "\nYou got it! Good job!"
    else
      puts "\nNo you are wrong! Correct answer is #{sum}! You lose one life!"
      if play == 1
        l1 -= 1
      end
      if play == 2
        l2 -= 1
      end
    end
    if play == 1
      play = 2
    else
      play = 1
    end
    puts "Current remaining life: P1: #{l1}/3, P2: #{l2}/3"
    return l1, l2, play
  end

end

