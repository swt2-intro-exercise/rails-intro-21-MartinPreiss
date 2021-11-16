require 'rails_helper'

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

 end
