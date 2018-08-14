class NdesController < ApplicationController
  def index
    @nde = Nde.all
  end

  def new
    @nde = Nde.new
  end

  def show
    @nde = Nde.find(params[:id])
  end

  def create
    @nde = Nde.new(nde_params)
    if @nde.save
      redirect_to nde_path(@nde)
    else
      render 'new'
    end
  end


  private

  def set_user
    @user = current_user
  end

  def nde_params
    params.require(:nde).permit(:name, :description, :city, :participant_number, :location, :drama, :price, :photo)
  end
end
