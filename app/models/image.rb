class Image < ApplicationRecord
  belongs_to :product
  validates :image, :product_id, presence: true
end
