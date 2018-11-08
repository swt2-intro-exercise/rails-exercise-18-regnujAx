require 'rails_helper'

describe 'Paper index page' do 
	it "should filter papers by year" do
    	FactoryBot.create :paper
    	FactoryBot.create :paper, title: 'wrong paper', year: 1968
    	visit papers_path(year: 1950)
    	expect(page).to_not have_text('wrong paper')
	end
end