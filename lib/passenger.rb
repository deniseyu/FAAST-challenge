class Passenger

	attr_accessor :passengers

	def enter(station)
		@passengers << passenger
	end

	def wallet_balance
		@wallet_balance ||= 20
	end

	def tap_in
		@wallet_balance -= 2
	end

end
