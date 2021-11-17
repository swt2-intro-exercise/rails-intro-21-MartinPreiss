require 'rails_helper'
require 'capybara/rspec'

describe "paper index page", type: :feature do
   it "Paper index page should render" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     @new_paper = FactoryBot.create :paper
     visit papers_path
    end

    it "Paper index page should allow filtering out papers by year" do
      paper1 = Paper.create({year: 1950, venue: "Test", title:"wichtiges paper1"})
      paper2 = Paper.create({year: 1960, venue: "Test", title:"wichtiges paper2"})
      visit papers_path(year:"1950")

      expect(page).to have_text("1950")
      expect(page).not_to have_text("1960")



     end
 

end