ActiveAdmin.register Product do
  permit_params :product, :description, :price, :discount, category_has_products_attributes: [:id, :product_id, :category_id, :_destroy]

  index do
    selectable_column
    column :id
    column :product
    column :description
    column :price
    column :discount
    column :categories do |product|
      product.categories.map { |pr| pr.name }.join(", ").html_safe
    end
    actions
  end

  show do |product|
    attributes_table do
      row :product
      row :description
      row :price
      row :discount
      row :categories do |product|
        product.categories.map { |pr| pr.name }.join(", ").html_safe
      end
    end

  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Product" do
      f.input :product
      f.input :description
      f.input :price
      f.input :discount
      f.has_many :category_has_products, allow_destroy: true do |n_f|
        n_f.input :category
      end
    end
    f.actions
  end
end
