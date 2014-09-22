class Train 

	attr_accessor :carriage

	def initialize
		@carriages = carriages
	end

	def carriages
		@carriages ||= []
	end

	def length
		carriages.count 
	end

	def add(carriage)
		@carriages << carriages
	end

	def remove(carriage)
		carriages.pop
	end

end