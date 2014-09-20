class Station

	def initialize
		@passengers = []
		@trains = []
	end

	def empty?
		@passengers = []
	end

	def passengers
		@passengers
	end

	def trains
		@trains
	end

	def passenger_count
		passengers.count 
	end

	def train_count
		trains.count
	end

	def admit(passenger)
		@passengers << passenger
	end

	def release(passenger)
		passengers.pop
	end

	def receive(train)
		@trains << train 
	end

	def discharge(train)
		trains.pop
	end

end