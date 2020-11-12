class Ingredient < ApplicationRecord
  validates :name, Presence: true, uniqueness: true
  has_many :doses
end
