require 'rails_helper'
require 'capybara/rspec'

describe "Edit author page", type: :feature do
   it "should exist at 'edit_photo_path' and render withour error" do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
  end

  it"Edit author page should save changes" do
     @alan = FactoryBot.create :author
    visit edit_author_path(@alan)

      fill_in 'author[first_name]', :with => 'Max'
      fill_in 'author[last_name]', :with => 'Mustermann'
      fill_in 'author[homepage]', :with => 'www.beispiel.com'
      
      click_button 'Update Author'
    
      expect(page).to have_text("Max")
      expect(page).to have_text("Mustermann")
      expect(page).to have_text("www.beispiel.com")
  end
 end
