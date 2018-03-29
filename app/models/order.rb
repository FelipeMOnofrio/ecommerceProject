class Order < ApplicationRecord
  belongs_to :stock
  belongs_to :address
  belongs_to :customer
  validates :final_price, :order_date, :stock_id, presence: true
end
