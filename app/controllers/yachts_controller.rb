class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_yacht, only: [ :show, :edit, :update, :destroy ]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR address ILIKE :query"
      @yachts = policy_scope(Yacht).where(sql_query, query: "%#{params[:query]}%")
    else
      @yachts = policy_scope(Yacht)
    end
  end

  def show
    @booking = Booking.new
    @yacht = set_yacht
    @marker = [{lng: @yacht.longitude,
    lat: @yacht.latitude,infoWindow: render_to_string(partial: "infowindow", locals: { yacht: @yacht }), image_url: helpers.asset_url('ancnhor.png')}]
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
      redirect_to dashboard_path(current_user)
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
    redirect_to dashboard_path(current_user)
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
    authorize @yacht
  end

  def yacht_params
    params.require(:yacht).permit(:name, :description, :price_per_day, :photo, :address)
  end
end
