class RemoveIndexProvinces < ActiveRecord::Migration[5.1]
  def change
    remove_index :provinces, column: :addresses_id
  end
end
