require 'rails_helper'
require 'capybara/rspec'

RSpec.describe "papers/new", type: :feature do
 
  it "Paper should not validate without title" do 
    visit new_paper_path
    
    fill_in 'paper[venue]', :with => '34942924'
    fill_in 'paper[year]', :with => 1999
      
    click_button 'Create Paper'

      expect(page).to have_text("1 error")
      expect(page).to have_text("Title can't be blank")
  end
end
