class BookingsController < ApplicationController
  before_action :set_nde, only: [:new, :create]
  before_action :set_booking, only: [:deny, :accept]

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

  def deny
    @booking.status = "Denied"
    @booking.save
    @user = current_user
    redirect_to user_path(@user)
  end

  def accept
    @booking.status = "Accepted"
    @booking.save
    @user = current_user
    redirect_to user_path(@user)
  end

  private

  def set_nde
    @nde = Nde.find(params[:nde_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def params_booking
    params.require(:booking).permit(:date, :guests, :waiver_check)
  end
end
