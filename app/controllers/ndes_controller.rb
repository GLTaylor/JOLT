class NdesController < ApplicationController


  def index
    if
    elsif params[:query].present?
      @ndes = Nde.search_by_query(params[:query])
    else
      @ndes = Nde.all
    end
  end

  def new
    @nde = Nde.new
  end

  def show
    @nde = Nde.find(params[:id])
  end

  def create
    set_user
    @nde = Nde.new(nde_params)
    @nde.user = @user
    if @nde.save!
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

# def index
#     if params[:query].present?
#       @ndes = Nde.where("name ILIKE ? AND drama = ?", params[:query], params[:drama])
#     else
#       @ndes = Nde.all
#     end
#   end
