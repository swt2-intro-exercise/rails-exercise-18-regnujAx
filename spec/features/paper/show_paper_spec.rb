require 'rails_helper'

describe 'Show paper page' do
	it 'should show the author\'s name' do
		@paper = FactoryBot.create :paper
		@author = FactoryBot.create :author
		@paper.authors = [@author]
		visit paper_path(@paper)
		expect(page).to have_text("Alan Turing")
	end
end
