class Address < ApplicationRecord
  belongs_to :customer
  has_many :order
  validates :province, :city, :street, :number, :postal_code, presence: true
end
