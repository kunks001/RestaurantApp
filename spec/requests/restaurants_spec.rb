require 'spec_helper'

describe "Restaurants" do

  describe "on the new restaurant page" do
  	before { visit new_restaurant_path }

  	subject { page }

  	it { should have_content("Add restaurant") }  

  		describe "filling in a new restaurant form" do
  		end
  end
end	
