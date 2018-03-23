class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :province
      t.string :city
      t.string :street
      t.integer :number
      t.string :apartment
      t.string :postal_code
      t.references :customer_id

      t.timestamps
    end
  end
end
