require './lib/spec_helper'
require './lib/train'

describe Train do 

	let(:train) { Train.new }
	let(:carriage) { double :carriage }

	it "should initially have four carriages" do 
		expect(train.length).to eq 4
	end

	it "should be able to add carriages" do 
		expect{ train.add(carriage) }.to change{train.length}.by 1
	end

	it "should be able to remove carriages" do 
		train.add(carriage)
		expect{ train.remove(carriage) }.to change{train.length}.by -1
	end

end
