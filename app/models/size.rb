class Size < ApplicationRecord
  has_many :stocks
  has_many :colours, through: :stocks
  has_many :products, through: :stocks
  validates :size, presence: true
end
