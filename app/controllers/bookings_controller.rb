class BookingsController < ApplicationController
  before_action :set_yacht
  before_action :set_booking, only: [ :edit, :update, :destroy ]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.yacht = @yacht
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to dashboard_booked_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    if @booking.save
      redirect_to dashboard_booked_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_booked_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_yacht
    @yacht = Yacht.find(params[:yacht_id])
  end
end
