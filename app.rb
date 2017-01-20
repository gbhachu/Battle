require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
  @player_1 = $player_1_name
  @player_2 = $player_2_name
  erb(:play)
end

get '/attack' do
  @player_1 = $player_1_name
  @player_2 = $player_2_name
  Game.new.attacks(@player_2)
  erb (:attack)
end









  # start the server if ruby file executed directly
  run! if app_file == $0
end
