class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_yacht, only: [ :show ]

  def index
    @yachts = Yacht.all
  end

  def show
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
  end
end
