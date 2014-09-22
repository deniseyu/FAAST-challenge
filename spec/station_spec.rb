require './lib/spec_helper'
require './lib/station'
require './lib/train'
require './lib/passenger'

describe Station do 

	let(:station) { Station.new }
	let(:passenger) { double :passenger, :wallet_balance => 20, :paid? => false }
	let(:paying_passenger) { double :passenger, :wallet_balance => 20, :paid? => true }
	let(:train) { double :train }

	def fill_station
		400.times { station.admit(paying_passenger) }
	end
	
	it "should initially have no passengers" do
		expect(station).to be_empty
	end

	it "should allow a passenger to enter" do 
		expect{station.admit(paying_passenger)}.to change{station.passenger_count}.by 1
	end

	it "should allow a passenger to leave" do 
		station.admit(paying_passenger)
		expect{ station.release(paying_passenger)}.to change{station.passenger_count}.by -1
	end

	it "should not allow a passenger with <£2 balance to tap in" do 
		allow(passenger).to receive(:wallet_balance).and_return 1
		expect{ station.admit(passenger) }.to raise_error(RuntimeError)
	end

	it "should not allow a passenger to tap in who has not paid" do 
		expect{ station.admit(passenger) }.to raise_error(RuntimeError)
	end

	it "should not allow passengers to tap in when full" do 
		fill_station
		expect{ station.admit(passenger) }.to raise_error(RuntimeError)
	end

	it "should initially have no trains" do
		expect(station.train_count).to be 0
	end

	it "should be able to receive a train" do 
		expect{ station.receive(train) }.to change{station.train_count}.by 1
	end

	it "should be able to discharge a train" do
		station.receive(train)
		expect{ station.discharge(train) }.to change{station.train_count}.by -1
	end

	it "should know what trains are currently in the station" do 
		station.receive(train)
		expect(station.trains).to eq [train] 
	end
	
end