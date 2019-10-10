class AdminsController < ApplicationController

  def index
	  @endusers = Enduser.all
  end

  def show
      @enduser = Enduser.find(params[:id])
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
