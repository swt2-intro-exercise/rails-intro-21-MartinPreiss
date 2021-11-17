require 'rails_helper'
#require 'capybara/rspec'

describe "paper show page", type: :feature do
   it "Paper show page should render" do
     @new_paper = FactoryBot.create :paper
     visit papers_path{@new_paper}
    end

    it "Paper details page should list the authors" do
        paper = create :paper
        author = create :author
        paper.authors<< author
        visit paper_path(paper.id)
        expect(page).to have_text("Alan Turing")
    end

end