require 'rails_helper'

describe 'Edit paper page' do
	it 'should have a single multiple select box' do
		@paper = FactoryBot.create :paper
    	visit edit_paper_path(@paper)
    	expect(page).to have_css('select[multiple]')
	end
end
