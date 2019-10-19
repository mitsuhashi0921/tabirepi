class AdminsController < ApplicationController

  def index
    @q = Enduser.ransack(params[:q])
    @endusers = @q.result(distinct: true).page(params[:page]).per(10).reverse_order
  end

  def search
    @q = Enduser.search
    @endusers = @q.result(distinct: true)
  end

  def show
      @enduser = Enduser.find(params[:id])
      @trips = @enduser.trips.page(params[:page]).per(10).reverse_order
  end

  def destroy
      Enduser.find(params[:id]).destroy
    if admin_signed_in?
      redirect_to trips_path
    else
      redirect_to admins_trips_path
    end
  end

end
