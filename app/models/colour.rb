class Colour < ApplicationRecord
  has_many :stocks
  has_many :sizes, through: :stocks
  has_many :products, through: :stocks
  validates :colour, presence: true
end
