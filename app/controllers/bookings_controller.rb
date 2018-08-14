class BookingsController < ApplicationController
  before_action :set_nde

  def new
    @booking = Booking.new
  end

  def create
  end

  private

  def set_nde
    @nde = Nde.find(params[:nde_id])
  end
end
