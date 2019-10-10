class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
      trips_path(current_enduser.id)
    end

end
