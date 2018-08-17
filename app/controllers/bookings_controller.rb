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
    @user = current_user
    if @booking.save
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'users/show' }
        format.js
      end
    end
  end

  def accept
    @booking.status = "Accepted"
     @user = current_user
    if @booking.save
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'users/show' }
        format.js
      end
    end
  end

  private

  def set_nde
    @nde = Nde.find(params[:nde_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def params_booking
    params.require(:booking).permit(:date, :guests, :waiver_check, :comment)
  end
end
