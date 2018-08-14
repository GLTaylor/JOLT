class NdesController < ApplicationController
  def index
    @ndes = Nde.all
  end

  def show
    @nde = Nde.find(params[:id])
  end

  # def create
  # end

  # def new
  # end
end
