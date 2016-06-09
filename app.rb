require 'sinatra/base'
require './lib/game'
require './lib/player'


class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    Game.build(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack
    redirect '/lose' if @game.over?
    erb :attack
  end

  get '/lose' do
    erb :lose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
