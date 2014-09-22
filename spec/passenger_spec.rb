require './lib/spec_helper'
require './lib/passenger'
require './lib/station'

describe Passenger do 

	let(:passenger) { Passenger.new }
	let(:station) { double :station }

	it "should have balance in his wallet" do 
		expect(passenger.wallet_balance).to_not eq 0
	end

	it "should be able to pay for a trip when tapping in" do 
		expect{ passenger.tap_in }.to change{passenger.wallet_balance}.by -2
	end

	it "should be able to know when it has paid for a trip" do 
		expect{ passenger.tap_in }.to change{passenger.paid?}.to eq true
	end

	it "should be able to tap out of a station" do
		passenger.tap_in
		expect{ passenger.tap_out }.to change{passenger.paid?}.to eq false
	end

	it "should be able to add balance to wallet" do 
		expect{ passenger.top_up(10) }.to change{passenger.wallet_balance}.by 10
	end

end
