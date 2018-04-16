class Address < ApplicationRecord
  belongs_to :customer
  belongs_to :province
  has_many :order
  validates :province_id, :city, :street, :number, :postal_code, :customer_id, presence: true
end
