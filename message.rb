class Message
  def welcomeMessage
    puts "=====\nMath Game!! Answer the questions in turn! Whoever gets wrong 3 times loses!!\n====="
  end
  
  def startMessage(numberOne, numberTwo, playing)
    puts "\n--- New Round ---"
    puts "\nNow is Player #{playing}'s turn!"
    puts "\nwhat is #{numberOne} plus #{numberTwo}?"
    print "Player #{playing}>"
  end
  
  def endMatch(livesOne, livesTwo)
    puts "\n======\nGame Over!"
    if livesOne == 0
      puts "Player 2 WIN\n======"
    end
    if livesTwo == 0
      puts "Player 1 WIN!\n======"
    end
  end
  
end