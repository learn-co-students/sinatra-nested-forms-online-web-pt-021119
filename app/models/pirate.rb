class Pirate

  attr_accessor :name, :weight, :height

  PIRATES = []

  def initialize(args)
    @name, @weight, @height = args[:name], args [:weight], args[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
