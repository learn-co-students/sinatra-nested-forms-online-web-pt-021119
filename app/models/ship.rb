class Ship

	attr_accessor :name, :type, :booty

	@@ships=[]

	def initialize(attribs)
		attribs.each do |k,v|
			self.send("#{k}=",v)
		end
		@@ships<<self
	end

	def self.all
		@@ships
	end

	def self.clear
		@@ships.clear
	end

end