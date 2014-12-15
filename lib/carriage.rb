require_relative 'people_holder'

class Carriage

	include PeopleHolder

	DEFAULT_CAPACITY = 40 

	def admit(passenger)
		raise "No more room in this carriage" if full?
		# raise "No train here" if station.train_count = 0
		@passengers << passenger
	end

	def release(passenger)
		passengers.pop
	end

end