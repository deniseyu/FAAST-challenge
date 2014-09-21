class Carriage

	attr_accessor :passengers, :capacity

	DEFAULT_CAPACITY = 40 

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def passengers
		@passengers ||= []
	end

	def passenger_count
		passengers.count  
	end 

	def admit(passenger)
		raise "No more room in this carriage" if full?
		@passengers << passenger
	end

	def alight(passenger)
		passengers.pop
	end

	def full?
		passenger_count == capacity
	end

end