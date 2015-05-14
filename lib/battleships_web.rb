require 'sinatra/base'
require 'battleships'

class BattleshipsWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/game' do
    @name = params[:name]
    @game = Game.new Player, Board
    if @name.empty?
      redirect '/'
    else
      erb :game
  end
end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
