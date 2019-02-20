class UsersController < ApplicationController
  before_action :set_user, only: [ :dashboard_posts, :dashboard_booked ]

  def dashboard_posts
    @hosted = @user.yachts
  end

  def dashboard_booked
    @bookings = @user.bookings
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end
end
