class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :provinces, :pst, :hst
    remove_column :addresses, :province

  end
end
