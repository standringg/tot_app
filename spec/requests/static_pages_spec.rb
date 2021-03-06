require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h7', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:heading)    {'Tour of Tauranga' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    
    #it { should_not have_link('Home') }
  end
  
  describe "Event details page" do
    before { visit event_details_path }

    let(:heading)    { 'Event Details' }
    let(:page_title) { 'Event Details' }

    it_should_behave_like "all static pages"
  end
  
  describe "Course page" do
  	before { visit course_path }

  	let(:heading)    { 'Course' }
    let(:page_title) { 'Course' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }

    let(:heading)    { 'About Us' }
    let(:page_title) { 'About Us' }

    it_should_behave_like "all static pages"
  end  

 

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Course"
    expect(page).to have_title(full_title('Course'))
    
    click_link "Home"
    click_link "Register now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "Event Details"
    expect(page).to have_title(full_title('Event Details'))
  end
end