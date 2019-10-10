class EndusersController < ApplicationController
  def show
  	@enduser = Enduser.find(params[:id])
  end
end
