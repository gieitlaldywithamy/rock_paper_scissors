class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def who_wins()


  end
end

# Create a simple sinatra app to allow the user to play rock, paper, scissors in their browser.
#
# You should be able to go to /rock/scissors and return the string "rock wins" to the page, for example.
#
# You will need to write a bit of logic that compares the two hands and decides which one has won, and then use that in the route definition.
#
# Next, create a models directory for your game logic class e.g. 'Game' and put all of the logic in there - there shouldn't be any logic left in the controller!
