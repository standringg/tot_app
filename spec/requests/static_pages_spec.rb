require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Tour of Tauranga') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end
  
  describe "Event details page" do
    before { visit event_details_path }

    it { should have_content('Event Details') }
    it { should have_title(full_title('Event Details')) }
  end
  
  describe "Course page" do
  	before { visit course_path }

    it { should have_content('Course') }
    it { should have_title(full_title('Course')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end  

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end