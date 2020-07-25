class ReviewsController < ApplicationController

  
  def create
    sweet = Sweet.find(params[:sweet_id])
  @review = sweet.reviews.build(review_params)
  if @review.save
    flash[:success] = "コメントしました"
    redirect_back(fallback_location: sweet_url(sweet.id))
  else
    flash[:danger] = "コメントできません"
    redirect_back(fallback_location: sweet_url(sweet.id))
  end 
  end



  private
    def review_params
      params.require(:review).permit(:point, :content)
    end 
  
end