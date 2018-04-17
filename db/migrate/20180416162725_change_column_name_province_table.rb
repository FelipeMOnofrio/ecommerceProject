class ChangeColumnNameProvinceTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :provinces, :gst, :pst

  end
end
