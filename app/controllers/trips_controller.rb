class TripsController < ApplicationController

  def new
  	@trip = Trip.new
  	# @day = Trip.days.build
  	# @stay = Day.tays.build
  end

end
