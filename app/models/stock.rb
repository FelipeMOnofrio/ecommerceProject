class Stock < ApplicationRecord
  belongs_to :product
  belongs_to :size
  belongs_to :colour
  has_many :orders
  validates :stock, :product_id, :size_id, :colour_id, presence: true
end
