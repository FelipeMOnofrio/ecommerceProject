class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.datetime :birth_date
      t.string :phone

      t.timestamps
    end
  end
end
