require 'rails_helper'
require 'capybara/rspec'

describe "New author page", type: :feature do
   it "should exist at 'new_author_path' and render withour error" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     visit new_author_path
  end

  it"New author page should have text input for first name, last name, and homepage" do
    visit new_author_path

    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
    end

    it "New author page should show validation errors" do
      visit new_author_path

      fill_in 'author[first_name]', :with => 'Max'
      fill_in 'author[homepage]', :with => 'www.beispiel.com'
      
      click_button 'Save Author'

      expect(page).to have_text("1 error")
      expect(page).to have_text("Last name can't be blank")
  end
 end
