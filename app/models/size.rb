class Size < ApplicationRecord
  has_many :stocks
  has_many :colours, through: :stocks
  has_many :products, through: :stocks
  validates :size, presence: true

  def name
    return self.size
  end

end
