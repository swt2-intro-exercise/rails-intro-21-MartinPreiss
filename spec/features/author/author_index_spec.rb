require 'rails_helper'
require 'capybara/rspec'

describe "author index page", type: :feature do
   it "Author index page should render" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     @alan = FactoryBot.create :author
     visit authors_path
    end

    it "Author index page should list name and homepage of all authors" do
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_text('Listing Authors')
        expect(page).to have_css('table')
        expect(page).to have_text('Name')
        expect(page).to have_text('Homepage')
        expect(page).to have_text('Alan Turing')
        expect(page).to have_text('http://wikipedia.de/Alan_Turing')
       end

    it "Author index page should link to the new author page" do
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
        
       end
    it "index page should link to authors' details page #10" do
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Show', href: author_path(@alan)
       end

    it "index page should link to edit author page" do
        @alan = FactoryBot.create :author
        visit authors_path
       
        expect(page).to have_link 'Edit', href: edit_author_path(@alan)
       end

    it "Author index page should have a link to delete an author" do
        @alan = FactoryBot.create :author
        visit authors_path
       
        expect(page).to have_link 'Delete', href: author_path(@alan)
       end
    #needs to install capybara-webkit
    # it "link to delete an author should delete" do
    #     @alan = FactoryBot.create :author
    #     visit authors_path
    #     startCount = Author.count

    #     accept_confirm do
    #         click_link('Delete')
    #       end
        
    #     expect(Author.count).to be < startCount
    #     expect(page).to_not have_text("Alan")
    #    end
 end
