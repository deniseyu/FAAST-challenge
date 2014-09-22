require './lib/passenger'
require './lib/people_holder'
require './lib/station'

class Holder; include PeopleHolder; end

describe PeopleHolder do 

	let(:passenger) { double :passenger, :wallet_balance => 20 }
	let(:holder) { Holder.new }

	DEFAULT_CAPACITY = 40

	it "should initially have no passengers" do 
		expect(holder).to be_empty
	end

	it "should allow a passenger to enter" do 
		expect{ holder.admit(passenger)}.to change{holder.passenger_count}.by 1
	end

	it "should allow a passenger to leave" do 
		holder.admit(passenger)
		expect{holder.release(passenger)}.to change{holder.passenger_count}.by -1
	end

	it "should know what passengers are currently there" do 
		holder.admit(passenger)
		expect(holder.passengers).to eq [passenger]
	end

end