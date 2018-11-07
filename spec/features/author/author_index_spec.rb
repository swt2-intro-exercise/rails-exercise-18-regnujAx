require 'rails_helper'

describe 'Author index page' do 
	it 'should render' do
		visit authors_path
    	expect(page).to have_link 'New', href: new_author_path
	end
end