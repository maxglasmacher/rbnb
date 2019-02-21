class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_yacht

  def index
    @reviews = @yacht.reviews
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.yacht = @yacht
    authorize @review
    if @review.save
      redirect_to yacht_path(@yacht)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    authorize @review
    @review.destroy
    redirect_to yacht_path(@yacht)
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:yacht_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
