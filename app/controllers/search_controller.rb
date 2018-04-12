class SearchController < ApplicationController
  def index
    @search_terms = params[:q] = params[:q]
    @products = Product.where(product: @search_terms)
    @categorie = Category.where(name: @search_terms)
    @colour = Colour.where(colour: @search_terms)
    @size = Size.where(size: @search_terms)
  end
end
