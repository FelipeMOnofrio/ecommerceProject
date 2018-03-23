class CreateCategoryHasProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :category_has_products do |t|
      t.references :category_id
      t.references :product_id

      t.timestamps
    end
  end
end
