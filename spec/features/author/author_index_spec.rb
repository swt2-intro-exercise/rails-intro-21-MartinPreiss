require 'rails_helper'

describe "author index page", type: :feature do
   it "Author index page should render" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     @alan = FactoryBot.create :author
     visit authors_path
    end

    it "Author index page should render" do
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_text('Listing Authors')
       end
 end
