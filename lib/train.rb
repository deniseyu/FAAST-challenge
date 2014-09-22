class Train 

	attr_accessor :carriages

	def initialize(carriages: 4)
		@carriages = []
		carriages.times do 
			@carriages << Carriage.new
		end
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