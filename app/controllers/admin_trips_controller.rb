class AdminTripsController < ApplicationController

  def index
    @q = Trip.ransack(params[:q])
    @trips = @q.result(distinct: true).page(params[:page]).per(10).reverse_order
  end

  def search
    @q = Trip.search
    @trips = @q.result(distinct: true)
  end

  def show
      @trip = Trip.find(params[:id])
      @trips = Trip.all.includes(:days, :stays, :images)
  end

  def destroy
      @trip = Trip.find(params[:id])
      @trip.destroy
      redirect_to admin_trips_path
  end


  private
    def trip_params
    params.require(:trip).permit(:title, :subtitle,
    	  days_attributes: [:id, :day, :_destroy,
        stays_attributes: [:id, :time, :country, :place, :money, :comment, :status, :_destroy,
        images_attributes: [:id, :image, :_destroy]]])
    end

end
