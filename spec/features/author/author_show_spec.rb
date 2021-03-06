require 'rails_helper'

describe "author page", type: :feature do
   it "should display author details #6" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     @alan = FactoryBot.create :author
     visit author_path(@alan)
    
     expect(page).to have_text('Author Info')
    expect(page).to have_text('Alan Turing')
    expect(page).to have_text('http://wikipedia.de/Alan_Turing')
    end

    it "Author index page should link to edit author page" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     @alan = FactoryBot.create :author
     visit author_path(@alan)
    
     expect(page).to have_link 'Edit', href: edit_author_path(@alan)
    end

 end
