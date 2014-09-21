require './lib/spec_helper'
require './lib/passenger'
require './lib/station'

describe Passenger do 

	let(:passenger) { Passenger.new }
	let(:station) { double :station }

	it "should have balance in his wallet" do 
		expect(passenger.wallet_balance).to_not eq 0
	end


	# it "should be touch in at a station" do 
	# 	passenger = Passenger.new
	# 	# expect(station).to receive(:passenger_count).and_return 0
	# 	station.passenger_count
	# 	expect(station.passenger_count).to eq 0
	# 	passenger.touch_in(station)
	# 	# allow(station).to receive(:admit).with(passenger)
	# 	# station.admit(passenger)
	# 	# expect(station).to receive(:passenger_count).and_return 1
	# 	# station.passenger_count
	# end

	# it "should be able to leave a station"

end
