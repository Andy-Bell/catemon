require 'sinatra/base'
require './lib/game'
require './lib/player'


class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.build(params[:player_1_name], params[:player_2_name])
  	p params
  	redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
