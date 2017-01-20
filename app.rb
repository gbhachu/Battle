require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
  @game = $game
  erb(:play)
end

get '/attack' do
  @game = $game
  @game.attacks(@game.opponent)
  if @game.player_1.hp == 0 || @game.player_2.hp == 0
    redirect to '/game_over'
  end
  erb (:attack)

end

get '/switch' do
  $game.switch_turns
  redirect '/play'
end

get '/game_over' do
  erb (:game_over)
end









  # start the server if ruby file executed directly
  run! if app_file == $0
end
