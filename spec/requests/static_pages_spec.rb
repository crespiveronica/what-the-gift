require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do

    it "should have the content 'Your blog name'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Your blog name')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Your blog name | Home")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Your blog name | About")
    end
  end

  describe "Projects page" do

    it "should have the content 'Projects'" do
      visit '/static_pages/projects'
      page.should have_selector('h1', :text => 'Projects')
    end

    it "should have the title 'Projects'" do
      visit '/static_pages/projects'
      page.should have_selector('title',
                        :text => "Your blog name | Projects")
    end
  end

end
