class Product < ApplicationRecord
  has_many :images
  has_many :category_has_products
  has_many :categories, through: :category_has_products
  has_many :stocks
  has_many :colours, through: :stocks
  has_many :sizes, through: :stocks
  validates :product, :price, presence: true
end
