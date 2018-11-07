require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render without error" do
    visit new_author_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
  	visit new_author_path
  
  	# these are the standard names given to inputs by the form builder
  	expect(page).to have_field('author[first_name]')
  	expect(page).to have_field('author[last_name]')
  	expect(page).to have_field('author[homepage]')
	end

  it "should be able to submit and to find the entry" do
    @author = FactoryBot.create :author
    visit new_author_path(@author)
    fill_in 'author[first_name]', with: 'Alan'
    fill_in 'author[last_name]', with: 'Turing'
    fill_in 'author[homepage]', with: 'http://wikipedia.de/Alan_Turing'
    find('input[type="submit"]').click
    alan = Author.find_by!(:last_name => 'Turing')
    expect(alan).to_not be_nil
    #another test: 
    #  expect{ find('input[type="submit"]').click }.to change{ Author.count }.by(1)
  end
end