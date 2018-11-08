require 'rails_helper'

RSpec.describe Paper, type: :model do
	it 'should not validate without a title' do
		@paper = FactoryBot.build(:paper, title: "")
		expect(@paper).to_not be_valid
	end

	it 'should only allowed numeric value for year' do
		@paper = FactoryBot.build(:paper, year: "nineteen-fifty")
		expect(@paper).to_not be_valid
	end

	it 'should not validate without a venue' do
		@paper = FactoryBot.build(:paper, venue: "")
		expect(@paper).to_not be_valid
	end
end
