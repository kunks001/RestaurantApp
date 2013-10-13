require 'spec_helper'

describe Restaurant do

	before { @restaurant = Restaurant.new(name:"Rotary", 	description: "delicious") }

	subject { @restaurant }

	it { should respond_to(:name) }
	it { should respond_to(:description) }
end
