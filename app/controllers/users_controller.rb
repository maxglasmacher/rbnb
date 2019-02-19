class UsersController < ApplicationController
  def index

  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end
end
