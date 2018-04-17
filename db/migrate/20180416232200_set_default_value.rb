class SetDefaultValue < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :discount, :decimal, default: 0
  end
end
