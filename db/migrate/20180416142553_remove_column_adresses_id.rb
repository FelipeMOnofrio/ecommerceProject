class RemoveColumnAdressesId < ActiveRecord::Migration[5.1]
  def change
    remove_column :provinces, :addresses_id
  end
end
