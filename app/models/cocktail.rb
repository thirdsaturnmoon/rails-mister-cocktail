class Cocktail < ApplicationRecord
  validates :name, Presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
