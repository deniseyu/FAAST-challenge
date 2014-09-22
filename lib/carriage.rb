require_relative 'people_holder'

class Carriage

	include PeopleHolder

	DEFAULT_CAPACITY = 40 

	def admit(passenger)
		raise "No more room in this carriage" if full?
		@passengers << passenger
	end

	def release(passenger)
		passengers.pop
	end

end