require 'spec_helper'

describe "Header" do

	subject { page }
	
  describe "in restaurant view " do

  	describe "index" do
  		before { visit restaurants_path }

  		it { should have_content("Home")}
    end

    describe "show" do
    	let(:restaurant) { Restaurant.create(name: "Yum Bun", description: "Awesome") }
  		before { visit restaurant_path(restaurant) }

  		it { should have_content("Home") }
  		it { should have_content("Edit") }
    end
  end
end
