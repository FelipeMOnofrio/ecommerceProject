class SearchController < ApplicationController
  def index
    @search_terms = params[:q] = params[:q]
    @products = Product.where('product LIKE ?', "%#{@search_terms}%")
    @categorie = Category.where('name LIKE ?', "%#{@search_terms}%")
  end
end
