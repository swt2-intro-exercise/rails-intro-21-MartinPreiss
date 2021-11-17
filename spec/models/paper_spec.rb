require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "Paper should have Title	Venue	Year" do
    paper = Paper.new(title:'COMPUTING MACHINERY AND INTELLIGENCE', venue:'Mind 49: 433-460', year:1950 )
    expect(paper.title).to eq('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(paper.venue).to eq('Mind 49: 433-460')
    expect(paper.year).to eq(1950)
end

it"Paper should not validate without title"do
  paper = Paper.new(title:nil, venue:'Mind 49: 433-460', year:1950 )
    expect(paper).to_not be_valid   
end

it "Paper should have and belong to many authors" do
  paper = Paper.new(title:nil, venue:'Mind 49: 433-460', year:1950 )
  expect(paper.authors).to eq []
end
end
