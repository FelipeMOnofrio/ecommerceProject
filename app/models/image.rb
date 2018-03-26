class Image < ApplicationRecord
  belongs_to :product
  mount_uploader :image, ImageUploader
  validates :image, :product_id, presence: true
end
