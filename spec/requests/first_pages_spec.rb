require 'spec_helper'

describe "FirstPages" do
  describe "Home page" do
  	it "should have content provider profile" do
      visit '/first_pages/home'
  	  page.should have_content('Provider Profiles')
    end

    it "should have the right title" do
      visit '/first_pages/home'
  	  page.should have_selector('title', 
  	  	 :text => "SCCA Marketing | Provider Profiles")
  	end
  end
end
