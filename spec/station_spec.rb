require './lib/spec_helper'
require './lib/station'

describe Station do 

	let(:station) { Station.new }
	let(:passenger) { double :passenger }
	let(:train) { double :train }
	
	it "should initially have no passengers" do
		expect(station).to be_empty
	end

	it "should allow a passenger to enter" do 
		expect(station.passenger_count).to be 0
		station.admit(passenger)
		expect(station.passenger_count).to be 1
	end

	it "should allow a passenger to leave" do 
		expect(station).to be_empty
		station.admit(passenger)
		expect(station.passenger_count).to be 1
		station.release(passenger)
		expect(station.passenger_count).to be 0
	end

	it "should initially have no trains" do
		expect(station.train_count).to be 0
	end

	it "should be able to receive a train" do 
		expect(station.train_count).to be 0
		station.receive(train)
		expect(station.train_count).to be 1
	end

	it "should be able to discharge a train" do
		expect(station.train_count).to be 0
		station.receive(train)
		expect(station.train_count).to be 1
		station.discharge(train)
		expect(station.train_count).to be 0
	end
	
end