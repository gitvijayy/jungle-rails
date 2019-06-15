class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    
  end

  def show
    
    
    @product = Product.find params[:id]
    @product_rating = Review.where("product_id =?", params[:id]).average(:rating)
    @empty_stars = blank_stars
     @review = Review.new(:product=>@product)
     
  end

  def blank_stars
    5 - @product_rating.to_i
end

end
