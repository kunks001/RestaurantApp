require 'spec_helper'

describe "Header" do

	subject { page }
	
  describe "in restaurant view " do

  	describe "index" do
  		before { visit restaurants_path }

  		it { should have_content("Home")}
    end
  end
end
