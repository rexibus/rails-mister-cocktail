class Ingredient < ApplicationRecord
  validates_uniqueness_of :name, allow_blank: false
  validates :name, presence: true, allow_blank: false
  has_many :doses
end
