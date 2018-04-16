class Customer < ApplicationRecord
  has_many :addresses
  has_many :payments
  has_many :orders
  validates :name, :email, :password, :phone, presence: true
  validates :email, uniqueness: true

end
