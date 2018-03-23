class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :final_price
      t.datetime :order_date
      t.integer :statue
      t.references :stock_id
      t.references :address_id
      t.references :customer_id

      t.timestamps
    end
  end
end
