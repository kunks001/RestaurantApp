require 'spec_helper'

describe "Restaurants" do
	subject { page }

  describe "new" do
  	before { visit new_restaurant_path }

  	it { should have_content("Add restaurant") }  

  		describe "when creating a new restaurant" do
  			before do
  				fill_in "name", with: "Rotary"
  				fill_in "description", with: "delicious"
  				click_button "Submit"
  			end

  			it { should have_content("Rotary") }
  			it { should have_content("delicious") }

  			it "should redirect to the index page" do
  				current_path.should == restaurants_path
  			end
  		end
  end

  describe "edit" do
  	let(:restaurant) { Restaurant.create(name: "Wagamamas", description: "Fantastic") }
  	before { visit edit_restaurant_path(restaurant) }

  	it { should have_content("Edit restaurant") }

  		describe "when editing a new restaurant" do

  			before do
  				fill_in "name", with: "Wagamamas"
  				fill_in "description", with: "Not great"
  				click_button "Submit"
  			end

  			it { should have_content("Wagamamas") }
  			it { should have_content("Not great") }

  			it "should redirect to the index page" do
  				current_path.should == restaurants_path
  			end
  		end
  end

  describe "show" do
    let(:restaurant) { Restaurant.create(name: "Wagamamas", description: "Fantastic") }
    before { visit restaurant_path(restaurant) }

    it { should have_content("Wagamamas") }
    it { should have_content("Fantastic") }
    it { should have_content("Edit") }
  end

end	
