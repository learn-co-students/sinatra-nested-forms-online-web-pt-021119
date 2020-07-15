class Pirate
  attr_accessor :name, :weight, :height

  PIRATES = []

  def initialize
    PIRATES << self
  end

  def self.all
    PIRATES
  end

  def self.clear
    PIRATES.clear
  end
end
