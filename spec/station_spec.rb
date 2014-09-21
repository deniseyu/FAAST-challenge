require './lib/spec_helper'
require './lib/station'
require './lib/train'
require './lib/passenger'

describe Station do 

	let(:station) { Station.new }
	let(:passenger) { double :passenger }
	let(:train) { double :train }
	
	it "should initially have no passengers" do
		expect(station).to be_empty
	end

	it "should allow a passenger to enter" do 
		expect(station.passenger_count).to be 0
		allow(passenger).to receive(:wallet_balance).and_return 20
		station.admit(passenger)
		expect(station.passenger_count).to be 1
	end

	it "should allow a passenger to leave" do 
		expect(station).to be_empty
		allow(passenger).to receive(:wallet_balance).and_return 20
		station.admit(passenger)
		expect(station.passenger_count).to be 1
		station.release(passenger)
		expect(station.passenger_count).to be 0
	end

	it "should not allow a passenger with zero balance to tap in" do 
		allow(passenger).to receive(:wallet_balance).and_return 0
		expect(passenger.wallet_balance).to be 0
		expect{ station.admit(passenger) }.to raise_error(RuntimeError)
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

	it "should know what trains are currently in the station" do 
		expect(station.train_count).to be 0
		station.receive(train)
		expect(station.trains).to eq [train] 
	end
	
end