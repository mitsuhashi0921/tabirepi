class TripsController < ApplicationController

  def new
  	@trip = Trip.new
  	@day = @trip.days.build
  	@stay = @day.stays.build
  end

  private
    def trip_params
    params.require(:trip).permit(:title, :subtitle,
    	days_attributes: [:id, :day, :_destroy,
        stays_attributes: [:id, :time, :country, :place, :money, :picture, :comment, :status, :_destroy]])
    end
end
