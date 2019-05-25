class Ship

attr_accessor :name, :type, :booty   

  SHIPS = []  

  def initiazlie
    SHIPS << self
  end 
 
  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end