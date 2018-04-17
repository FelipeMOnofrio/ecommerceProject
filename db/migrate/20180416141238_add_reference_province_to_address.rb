class AddReferenceProvinceToAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :provinces, :addresses, foreing_key: true

  end
end
