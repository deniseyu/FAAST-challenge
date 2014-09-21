class Train 

	attr_accessor :carriage

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
	
	# def passenger_count
	# 	carriages.each do |carriage|
	# 		carriage.passenger_count
	# 	end
	# end






end