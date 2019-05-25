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
    
    @pirate = Pirate.new
    @pirate.name = params["pirate"]["name"]
    @pirate.weight = params["pirate"]["weight"]
    @pirate.height = params["pirate"]["height"]

    @ship1 = Ship.new
    @ship1.name = params["pirate"]["ships"][0]["name"]
    @ship1.type = params["pirate"]["ships"][0]["type"]
    @ship1.booty = params["pirate"]["ships"][0]["booty"]

    @ship2 = Ship.new
    @ship2.name = params["pirate"]["ships"][1]["name"]
    @ship2.type = params["pirate"]["ships"][1]["type"]
    @ship2.booty = params["pirate"]["ships"][1]["booty"]

    erb :"pirates/show"
  end

  
    # ASK ANTONIO why this is not rendering.
    # post '/pirates' do
    #  pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:name], height: params[:pirate][:name])
    #  params[:pirate][:ships].each do |data|
    #   ship = Ship.new(data)
    #   ship.pirate = pirate
    #   ship.save
    #  end
    #   erb :"pirates/show"
    # end
  



  end
end
