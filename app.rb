require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all
      #puts "Params => #{params}"
      #puts "Pirate => #{params[:pirate]}"
      #puts "Name #{@pirate.name}"

      #puts "Pirate => #{@pirate} #{@pirate.name} #{@pirate.height} #{@pirate.weight}"
      #puts "Ships => #{@ships}"
      erb :'pirates/show'
    end

  end
end
