class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :payment_method
      t.datetime :payment_date
      t.decimal :amount
      t.integer :status
      t.references :customer_id

      t.timestamps
    end
  end
end
