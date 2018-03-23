class ChangecolumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :stocks, :size_id_id, :size_id
    rename_column :stocks, :colour_id_id, :colour_id
  end
end
