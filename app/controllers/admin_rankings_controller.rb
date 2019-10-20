class AdminRankingsController < ApplicationController
  def index
      @trips = Trip.find(Like.group(:trip_id).order('count(trip_id) desc').limit(30).pluck(:trip_id))
  end
end
