class Author < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :homepage, presence: true
  #attr_accessor :first_name, :last_name, :homepage

  def name
  	"#{first_name} #{last_name}"
  end
end
