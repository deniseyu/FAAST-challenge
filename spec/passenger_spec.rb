require './lib/spec_helper'
require './lib/passenger'
require './lib/station'

describe Passenger do 

	let(:passenger) { Passenger.new }
	let(:station) { double :station }

	it "should have balance in his wallet" do 
		expect(passenger.wallet_balance).to_not eq 0
	end

	it "should be able to tap into a station" do 
		expect(passenger.wallet_balance).to eq 20
		passenger.tap_in
		expect(passenger.wallet_balance).to eq 18
	end

	it "should be able to add balance to wallet" do 
		expect(passenger.wallet_balance).to eq 20
		passenger.top_up(10)
		expect(passenger.wallet_balance).to eq 30
	end

end
