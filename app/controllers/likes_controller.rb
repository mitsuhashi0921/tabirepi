class LikesController < ApplicationController
    def create
        @trip = Trip.find(params[:trip_id])
        @like = current_enduser.likes.new(trip_id: @trip.id)
        @like.save
        render :create
    end
    def destroy
        @trip = Trip.find(params[:trip_id])
        @like = current_enduser.likes.find_by(trip_id: @trip.id)
        @like.destroy
        render :destroy
    end
end
