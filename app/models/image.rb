class Image < ApplicationRecord
  belongs_to :product
  validates :image, :product, presence: true
end
