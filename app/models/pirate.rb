class Pirate

  attr_reader :name, :height, :weight

def initialize(hash)
  @name = hash[:name]
  @height = hash[:height]
  @weight = hash[:weight]
end

end
