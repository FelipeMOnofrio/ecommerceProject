class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product
      t.string :description
      t.decimal :price
      t.decimal :discount

      t.timestamps
    end
  end
end
