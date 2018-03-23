class FixForeingKeys < ActiveRecord::Migration[5.1]
  def change
    rename_column :stocks, :product_id_id, :product_id
    rename_column :payments, :customer_id_id, :customer_id
    rename_column :orders, :customer_id_id, :customer_id
    rename_column :addresses, :customer_id_id, :customer_id
    rename_column :orders, :address_id_id, :address_id
    rename_column :orders, :stock_id_id, :stock_id
    rename_column :images, :product_id_id, :product_id
    rename_column :category_has_products, :product_id_id, :product_id
    rename_column :category_has_products, :category_id_id, :category_id
  end
end
