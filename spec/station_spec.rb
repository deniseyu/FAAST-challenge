require './lib/spec_helper'
require './lib/station'

describe Station do 
	
	it "should initially be empty" do
		station = Station.new
		expect(station).to be_empty
	end

	it "should allow a passenger to enter" do 
		station = Station.new
		passenger = double :passenger
		expect(station).to be_empty
		station.admit(passenger)
		expect(station.passengers).to_not be []
	end
	
end