class ReviewsController < ApplicationController
  before_action :set_nde, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @review.nde = @nde
    @review.user = current_user
    if @review.save
      redirect_to nde_path(@nde)
    else
      render :new
    end
  end


  private

  def set_nde
    @nde = Nde.find(params[:nde_id])
  end

  def params_review
    params.require(:review).permit(:title, :body, :rating)
  end
end
