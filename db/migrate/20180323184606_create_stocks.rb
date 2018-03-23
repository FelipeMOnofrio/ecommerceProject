class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.references :size_id
      t.references :colour_id
      t.references :product_id
      t.integer :stock

      t.timestamps
    end
  end
end
