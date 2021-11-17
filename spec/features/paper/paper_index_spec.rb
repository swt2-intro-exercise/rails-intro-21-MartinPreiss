require 'rails_helper'
require 'capybara/rspec'

describe "paper index page", type: :feature do
   it "Paper index page should render" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     @new_paper = FactoryBot.create :paper
     visit papers_path
    end

end