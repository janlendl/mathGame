class Players
  def initialize()
    @livesOne = 3
    @livesTwo = 3
    @playing = rand(1..2)
  end

  def players
    return @livesOne, @livesTwo, @playing
  end
  
end