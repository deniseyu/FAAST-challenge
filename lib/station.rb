require_relative 'people_holder'

class Station

	include PeopleHolder

	attr_accessor :passengers, :trains 

	DEFAULT_CAPACITY = 400

	def initialize
		@passengers = []
		@trains = []
	end

	def train_count
		trains.count
	end

	def admit(passenger)
		raise "No money, no ride" if passenger.wallet_balance < 2
		raise "No more room for passengers" if full?
		raise "You have not paid" if passenger.paid? == false
		@passengers << passenger
	end

	def release(passenger)
		passengers.pop.paid? == false
	end

	def receive(train)
		@trains << train 
	end

	def discharge(train)
		trains.pop
	end

	def full?
		passenger_count == 400
	end

end