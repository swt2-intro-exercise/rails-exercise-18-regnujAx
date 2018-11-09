class Paper < ApplicationRecord
	validates :title, presence: true
	validates :venue, presence: true
	validates :year, numericality: true

	has_and_belongs_to_many :authors

	scope :published_in, -> (year) { where("year = ?", year) if year.present? }
end
