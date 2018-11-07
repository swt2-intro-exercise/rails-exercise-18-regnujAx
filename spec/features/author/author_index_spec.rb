require 'rails_helper'

describe 'Author index page' do 
	it 'should render' do
		visit authors_path
    	expect(page).to have_link 'New', href: new_author_path
	end

	it 'should show authors' do 
		@alan = FactoryBot.create :author
		visit authors_path
    	expect(page).to have_text 'Alan'
    	expect(page).to have_text 'Turing'
    	expect(page).to have_text 'http://wikipedia.de/Alan_Turing'
    	expect(page).to have_link "Show", href: author_path(@alan)
	end
end