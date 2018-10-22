require("sinatra")
require("sinatra/contrib/all") if development?
require("pry-byebug")
require_relative("models/game")

get "/welcome" do
  erb(:welcome)
end

get "/play/:player_1/:player_2" do
  game = Game.new(params[:player_1], params[:player_2])
  @winner = game.declare_winner()
  erb(:result)
end
