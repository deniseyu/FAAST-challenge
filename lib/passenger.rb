class Passenger

	attr_accessor :passengers, :wallet_balance

	DEFAULT_BALANCE = 20

	def initialize(option = {})
		@wallet_balance = option.fetch(:wallet_balance, DEFAULT_BALANCE)
	end

	def enter(station)
		@passengers << passenger
	end

	def wallet_balance
		@wallet_balance
	end

	def tap_in
		@wallet_balance -= 2
	end

	def top_up(amount)
		@wallet_balance += amount 
	end

	# def paid?
	# 	passenger.tap_in = true 
	# end
	# Here, I considered writing a method to help the station validate 
	# that the passenger paid.. but I don't know how just yet

end
