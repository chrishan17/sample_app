require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content right title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title',
        :text => "Ruby on Rails Tutorial Sample App | Home")
    end

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "About page" do

    it  "should have the content 'about'" do #这句话没什么用，about可以改成任意东西不对结果造成影响。
      visit '/static_pages/about' #这里会访问app/views/static_pages/about.html.erb
      page.should have_content('About') #如果该html里面没有‘About’，会failure
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end

  end

end
