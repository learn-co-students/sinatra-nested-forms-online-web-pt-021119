class Pirate
	attr_accessor :name, :weight, :height, :ships

	@@pirates = []

	def initialize(attribs)
		@ships=[]
		attribs.each do |k,v|
			self.send("#{k}=",v)
		end
		@@pirates << self
	end

	def self.all
		@@pirates
	end
end