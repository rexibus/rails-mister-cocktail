class Cocktail < ApplicationRecord
  validates_uniqueness_of :name
  validates :name, presence: true, allow_blank: false
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
