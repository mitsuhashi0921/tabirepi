class TripsController < ApplicationController

  def index
  	@trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @trips = Trip.all.includes(:days, :stays, :images)
  end

  def new
  	@trip = Trip.new
  	@day = @trip.days.build
  	@stay = @day.stays.build
  	@image = @stay.images.build
  end

  def create
      @trip = Trip.new(trip_params)
      @trip.enduser_id = current_enduser.id
      @enduser = current_enduser
      @trips = Trip.all.order(created_at: :desc)
      if @trip.save
         redirect_to trips_path(@trip)
         flash[:notice] = "You have creatad book successfully."
      else
         render 'trips/new'
      end
  end

  def edit
      @trip = Trip.find(params[:id])
      if @trip.enduser == current_enduser
      else
        redirect_to trips_path
      end
  end

  def update
      @trip = Trip.find(params[:id])
      @trip.update(trip_params)
      if @trip.save
        redirect_to trip_path(@trip)
        flash[:notice] = "You have edited book successfully"
      else
        render :edit
      end
  end

  def destroy
      @trip = Trip.find(params[:id])
      @trip.destroy
      redirect_to trips_path
  end

  private
    def trip_params
    params.require(:trip).permit(:title, :subtitle,
    	  days_attributes: [:id, :day, :_destroy,
        stays_attributes: [:id, :time, :country, :place, :money, :comment, :status, :_destroy,
        images_attributes: [:id, :image, :_destroy]]])
    end
end
