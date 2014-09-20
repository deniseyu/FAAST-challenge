class Station

	def initialize
		@passengers = []
	end

	def empty?
		@passengers = []
	end

	def passengers
		@passengers
	end

	def admit(passenger)
		@passengers << passenger
	end

end