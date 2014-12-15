require './lib/spec_helper'
require './lib/carriage'

describe Carriage do 

	let(:carriage) { Carriage.new } 
	let(:passenger) { double :passenger }
	let(:train) { double :train }
	let(:station) { double :station }

	def fill_carriage
		40.times { carriage.admit(passenger) }
	end

	it "should contain no passengers initially" do 
		expect(carriage.passengers).to eq []
	end

	# it "should not allow a passenger to board when no train is present" do
	# 	expect{ carriage.admit(passenger) }.to raise_error(RuntimeError)
	# end

	it "should allow a passenger to board" do 
		expect{ carriage.admit(passenger)}.to change{carriage.passenger_count}.by 1
	end

	it "should allow a passenger to alight" do 
		carriage.admit(passenger)
		expect{ carriage.release(passenger) }.to change{carriage.passenger_count}.by -1
	end

	it "should know how many passengers are on board" do 
		5.times { carriage.admit(passenger) }
		expect(carriage.passenger_count).to eq 5
	end

	it "should know when it's full" do 
		fill_carriage
		expect(carriage).to be_full
	end

	it "should not admit passengers when full" do
		fill_carriage
		expect{ carriage.admit(passenger) }.to raise_error(RuntimeError)
	end

end
