class BookingsController < ApplicationController
  before_action :set_nde

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.nde = @nde
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.valid?
      @booking.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def set_nde
    @nde = Nde.find(params[:nde_id])
  end

  def params_booking
    params.require(:booking).permit(:date, :guests, :waiver_check)
  end
end
