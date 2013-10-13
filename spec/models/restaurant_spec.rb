require 'spec_helper'

describe Restaurant do

	before { @restaurant = Restaurant.new(name:"Rotary", 	description: "delicious") }

	subject { @restaurant }

	it { should respond_to(:name) }
	it { should respond_to(:description) }

	it { should be_valid }

	describe "when name is not present" do
		before { @restaurant.name = " "}
		it { should_not be_valid }
	end

	describe "when description is not present" do
		before { @restaurant.description = " "}
		it { should_not be_valid }
	end
end
