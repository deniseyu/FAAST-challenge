class Passenger

	attr_accessor :passengers, :wallet_balance
	attr_writer :paid

	DEFAULT_BALANCE = 20

	def initialize(option = {})
		@wallet_balance = option.fetch(:wallet_balance, DEFAULT_BALANCE)
		@paid = false
	end

	def enter(station)
		@passengers << passenger
	end

	def wallet_balance
		@wallet_balance
	end

	def tap_in
		@wallet_balance -= 2
		@paid = true
	end

	def tap_out
		@paid = false
	end

	def top_up(amount)
		@wallet_balance += amount 
	end

	def paid?
		@paid
	end



end
