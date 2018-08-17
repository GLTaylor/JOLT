class ReviewsController < ApplicationController
  before_action :set_nde, only: [:create]

  def create
    @review = Review.new(params_review)
    @review.nde = @nde
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html { redirect_to nde_path(@nde) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'ndes/show' }
        format.js
      end
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
