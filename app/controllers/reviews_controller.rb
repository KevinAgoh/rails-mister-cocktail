class ReviewsController < ApplicationController

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail

    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
    render "cocktail/show"
    end
  end

  def index
    @reviews = Reviews.all
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
