require './lib/spec_helper'
require './lib/train'

describe Train do 

	let(:train) { Train.new }
	let(:carriage) { double :carriage }

	it "should initially have no carriages" do 
		expect(train.length).to eq 0
	end

	it "should be able to add carriages" do 
		expect(train.length).to eq 0
		train.add(carriage)
		expect(train.length).to eq 1
	end

	it "should be able to remove carriages" do 
		expect(train.length).to eq 0
		train.add(carriage)
		expect(train.length).to eq 1
		train.remove(carriage)
		expect(train.length).to eq 0
	end

	it "should know how many passengers are in a carriage" do 
		expect(train.length).to eq 0
		train.add(carriage)
		expect(train.length).to be 1
		allow(carriage).to receive(:passenger_count).and_return 25
		carriage.passenger_count
		expect(carriage.passenger_count).to eq 25
	end


end
