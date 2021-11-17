require 'rails_helper'
require 'capybara/rspec'

describe "paper edit page", type: :feature do
   it "Paper show page should render" do
     @new_paper = FactoryBot.create :paper
     visit edit_paper_path(@new_paper)
    end

    it "Edit paper page should allow to select paper authors from a multiple select box " do
        @new_paper = FactoryBot.create :paper
        visit edit_paper_path(@new_paper)
        expect(page).to have_select(multiple: true)
    end

end