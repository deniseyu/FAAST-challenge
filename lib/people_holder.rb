module PeopleHolder 

	attr_accessor :passengers, :capacity

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@passengers = passengers
	end

	def passengers
		@passengers ||= []
	end

	def empty?
		@passengers = []
	end

	def full?
		passenger_count == capacity
	end

	def passenger_count
		passengers.count 
	end

	def release(passenger)
		passengers.pop
	end

	def admit(passenger)
		@passengers << passenger
	end

end
