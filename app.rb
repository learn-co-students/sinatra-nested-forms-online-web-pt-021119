require './environment'
module FormsLab
  class App < Sinatra::Base

    get '/' do

      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/pirates' do


      @pirate = params[:pirate]
      # binding.pry
      @ship_1 = params[:pirate][:ships][0]
      @ship_2 = params[:pirate][:ships][1]
      erb :'pirates/show'
    end

  end
end
