class BikesController < ApplicationController
  before_action :set_bike, only: [ :show, :edit, :update, :destroy ]
  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to bikes_path(@bike)
    else
      render new
    end
  end

  def edit
  end

  def update
    if @bike.update(bike_params)
      redirect_to bike_path(@bike)
    else
      render edit
    end
  end

  def destroy
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(
      :id,
      :name,
      :price,
      :disabled,
      components_attributes: [
        :id,
        :name,
        :_destroy,
        options_attributes: [
          :id,
          :name,
          :price,
          :disabled,
          :_destroy
        ]
      ]
    )
  end
end
