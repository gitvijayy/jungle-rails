class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product_rating = 2
    @empty_stars = blank_stars
    @product = Product.find params[:id]
  end

  def blank_stars
    5 - @product_rating.to_i
end

end
