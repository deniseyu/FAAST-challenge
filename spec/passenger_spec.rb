require './lib/spec_helper'
require './lib/passenger'

describe Passenger do 

	let(:passenger) { Passenger.new }
	let(:station) { double :station }

	it "should be able to enter a station" do 
		passenger = Passenger.new
		expect(station).to be_empty
	end

end
