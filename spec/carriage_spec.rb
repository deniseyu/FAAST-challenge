require './lib/spec_helper'
require './lib/carriage'

describe Carriage do 

	let(:carriage) { Carriage.new } 
	let(:passenger) { double :passenger }

	def fill_carriage
		40.times { carriage.admit(passenger) }
	end

	it "should contain no passengers initially" do 
		expect(carriage.passengers).to eq []
	end

	it "should allow a passenger to board" do 
		expect(carriage.passenger_count).to eq 0
		carriage.admit(passenger)
		expect(carriage.passenger_count).to eq 1
	end

	it "should allow a passenger to alight" do 
		expect(carriage.passenger_count).to eq 0
		carriage.admit(passenger)
		expect(carriage.passenger_count).to eq 1
		carriage.alight(passenger)
		expect(carriage.passenger_count).to eq 0
	end

	it "should know how many passengers are on board" do 
		expect(carriage.passenger_count).to eq 0
		5.times { carriage.admit(passenger) }
		expect(carriage.passenger_count).to eq 5
	end

	it "should know when it's full" do 
		expect(carriage).to_not be_full
		fill_carriage
		expect(carriage).to be_full
	end

	it "should not admit passengers when full" do
		expect(carriage).to_not be_full
		fill_carriage
		expect(carriage).to be_full
		expect{ carriage.admit(passenger) }.to raise_error(RuntimeError)
	end

end
