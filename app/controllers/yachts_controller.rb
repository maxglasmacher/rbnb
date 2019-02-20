class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_yacht, only: [ :show, :edit, :update, :destroy ]

  def index
    @yachts = policy_scope(Yacht)
  end

  def show
    @booking = Booking.new
  end

  def new
    @yacht = Yacht.new
    authorize @yacht
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    authorize @yacht
    if @yacht.save
      redirect_to yacht_path(@yacht)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @yacht.update(yacht_params)
    authorize @yacht
    if @yacht.save
      redirect_to yachts_path
    else
      render :edit
    end
  end

  def destroy
    @yacht.destroy
    redirect_to yachts_path
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
    authorize @yacht
  end

  def yacht_params
    params.require(:yacht).permit(:name, :description, :price_per_day, :photo)
  end
end
