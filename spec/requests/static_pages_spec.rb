require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Tour of Tauranga | Home")
    end
  end

  describe "Event details page" do

    it "should have the content 'Event Details'" do
      visit '/static_pages/event_details'
      expect(page).to have_content('Event Details')
    end

    it "should have the title 'Event Details'" do
      visit '/static_pages/event_details'
      expect(page).to have_title("Tour of Tauranga | Event Details")
    end
  end

  describe "Course page" do

    it "should have the content 'Course'" do
      visit '/static_pages/course'
      expect(page).to have_content('Course')
    end

    it "should have the title 'Course'" do
      visit '/static_pages/course'
      expect(page).to have_title("Tour of Tauranga | Course")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

  	it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Tour of Tauranga | About Us")
    end
  end
end
