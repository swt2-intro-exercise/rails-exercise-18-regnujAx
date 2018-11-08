require 'rails_helper'

describe 'Author edit page' do 
	it 'should render without error' do
		@alan = FactoryBot.create :author
		visit edit_author_path(@alan)
	end

	it 'should save changes' do
		@alan = FactoryBot.create :author
		visit edit_author_path(@alan)
		page.fill_in 'author[first_name]', with: 'Alan Mathison'
		find('input[type="submit"]').click
		@alan.reload
    	expect(@alan.first_name).to eq('Alan Mathison')
	end
end