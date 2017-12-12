require('pry-byebug')
class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @rules = {
       :rock     => { :rock => 'tie',   :paper => 'lose',  :scissors => 'win'},
       :paper    => { :rock => 'win',   :paper => 'tie',   :scissors => 'lose'},
       :scissors => { :rock => 'lose',  :paper => 'win',   :scissors => 'tie' },
     }
  end

  def play()
    player1_move = @player1.to_sym
    player2_move = @player2.to_sym
    return @rules[player1_move][player2_move]
  end


end

    # table_logic = {
    #   :rock     => { 'rock' => 'tie',   'paper' => 'lose',  'scissors' => 'win'},
    #   :paper    => { :rock => 'win',   :paper => 'tie',   :scissors => 'lose'},
    #   :scissors => { :rock => 'lose',  :paper => 'win',   :scissors => 'tie' },
    # }


#
#     case @player1
#       when 'rock',
#         if @player2 == 'scissors'
#           return
#         return comparison[@player2]
#       when 'paper'
#         return table_logic[:paper][:@player2]
#       when 'scissors'
#         return table_logic[:scissors][:@player2]
#       else
#         puts "Invalid choice!"
#     end
#   end
# end

  #     if player1 == "rock"
  #       if player2 == "scissors"
  #         return "rock won"
  #       elsif player2 == "paper"
  #         return "paper wins"
  #       else RaiseException
  #     end
  #   elsif player1 == "scissors"
  #     if player2 == "rock"
  #       return "rock won"
  #     elsif player2 == "paper"
  #       return "paper won"
  #     else RaiseException
  #   end
  #   elsif player1 == "paper"
  #     if player2 == "rock"
  #       return "paper won"
  #     elsif player2 == "scissors"
  #       return "scissors won"
  #     else RaiseException
  #   end
  # end


# Create a simple sinatra app to allow the user to play rock, paper, scissors in their browser.
#
# You should be able to go to /rock/scissors and return the string "rock wins" to the page, for example.
#
# You will need to write a bit of logic that compares the two hands and decides which one has won, and then use that in the route definition.
#
# Next, create a models directory for your game logic class e.g. 'Game' and put all of the logic in there - there shouldn't be any logic left in the controller!
