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

  it "should save data" do
    visit new_author_path

    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[last_name]', with: 'Turing'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.de/Alan_Turing'
    find('input[type="submit"]').click
    alan = Author.find_by!(:last_name => 'Turing')
    expect(alan).to_not be_nil
  end

  it "should show an error message when last name is missing" do
    visit new_author_path

    fill_in "author[first_name]", with: "Alan"
    fill_in "author[homepage]", with: "http://wikipedia.de/Alan_Turing"
    find('input[type="submit"]').click
    expect(page).to have_text("error")
  end
end