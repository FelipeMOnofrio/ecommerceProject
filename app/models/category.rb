class Category < ApplicationRecord
  has_many :category_has_products
  has_many :products, through: :category_has_products
  validates :name, presence: true
end
