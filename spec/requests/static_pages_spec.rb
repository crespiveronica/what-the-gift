require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', text: 'Your blog name')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title',
                        text: "Your blog name")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', text: '| Home')
    end
  end

  describe "Projects page" do

    it "should have the h1 'Projects'" do
      visit projects_path
      page.should have_selector('h1', text: 'Projects')
    end

    it "should have the title 'Projects'" do
      visit projects_path
      page.should have_selector('title',
                        text: "Your blog name | Projects")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', text: 'About')
    end

    it "should have the title 'About'" do
      visit about_path
      page.should have_selector('title',
                    text: "Your blog name | About")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "Your blog name | Contact")
    end
  end
end
