class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_yacht, only: [ :show ]

  def index
    @yachts = Yacht.all
  end

  def show
  end

  def new
    @yacht = Yacht.new
    authorize @yacht
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    authorize @yacht
    @yacht.save!
    redirect_to yachts_path
  end

  def destroy
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
  end

  def yacht_params
    params.require(:yacht).permit(:name, :description, :price_per_day, :photo)
  end
end
