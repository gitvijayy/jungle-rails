class ReviewsController < ApplicationController



  def create
@review = Review.create(review_params)
    @review.product_id = params[:product_id].to_i 
    @review.user = current_user
    @review.save
    if @review.save
      redirect_to :back, notice: 'Review created!' 
else
       render :back
     end
   
  end
 def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to :back, notice: 'Product deleted!'
  end

  def review_params
    params.require(:review).permit(
    
     
    :rating,
      :description
    )
  end

end
