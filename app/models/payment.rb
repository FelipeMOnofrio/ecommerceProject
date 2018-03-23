class Payment < ApplicationRecord
  has_many :customers
  validates :payment_method, :payment_date, :amount, :customer_id, presence: true
end
