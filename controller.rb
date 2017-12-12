require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')

get ('/') do
  erb(:home)
end

get('/:player1/:player2') do
  @player1 = params[:player1]
  @player2 = params[:player2]
  game = Game.new(@player1, @player2)
  erb(:game)
end
