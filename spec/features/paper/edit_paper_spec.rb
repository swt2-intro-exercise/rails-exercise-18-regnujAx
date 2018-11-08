require 'rails_helper'

describe 'Edit paper page' do
	it 'should have a single multiple select box' do
		@paper = FactoryBot.create :paper
    	visit edit_paper_path(@paper)
    	expect(page).to have_css('select[multiple]')
	end

	it 'should update selected authors for paper authors' do
    	@author = FactoryBot.create :author
    	@author2 = FactoryBot.create(:author, first_name: "Peter", last_name: "Plagitarius")
    	@paper = FactoryBot.create(:paper, authors: [@author])
    	visit edit_paper_path(@paper)
    	@select_authors = find "select"
    	@select_authors.select @author2.name
    	find('input[type="submit"]').click
    	@paper.reload
    	expect(@paper.authors).to include(@author2)
	end
end
