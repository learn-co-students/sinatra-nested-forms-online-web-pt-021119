class Ship

attr_reader :name, :type, :booty
@@ships = []

def initialize(hash)
  @name = hash[:name]
  @type = hash[:type]
  @booty = hash[:booty]
  Ship.all << self
end

def self.all
  @@ships
end

def self.clear
  @@ships.clear
end

end
