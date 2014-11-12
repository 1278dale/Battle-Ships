require 'sinatra/base'

class BattleShips < Sinatra:Base
  get '/' do
    erb :index
  end

  post '/register_player' do
    @player = Player.new
    @player.name = params[:player_name]
    if GAME.ready?
        redirect '/play'
      else
        erb :waiting
  end

  # start the server if ruby file executed directly
  run! if app_file == $0