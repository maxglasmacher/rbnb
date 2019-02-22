class UsersController < ApplicationController
  before_action :set_user, only: [ :dashboard ]

  def dashboard
    @hosted = @user.yachts
    @bookings = @user.bookings
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end
end
