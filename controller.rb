require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')

get ('/') do
  erb(:home)
end

get('/:player1') do
  @player1 = params[:player1]

  game = Game.new(@player1)
  @computer_move = game.computer_move
  @result = game.play()
  erb(:rock_paper_scissors)
end
