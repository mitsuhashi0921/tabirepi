class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authenticate!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def authenticate!
    if admin_signed_in?
      authenticate_admin!
    else
      authenticate_enduser!
    end
  end

private

  def after_sign_in_path_for(resource)
    case resource
      when Enduser
        trips_path
      when Admin
        admin_trips_path
      end
  end

  def after_sign_out_path_for(resource)
      root_path
  end


    # deviseコントローラーにストロングパラメータを追加する
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
      # サインアップ時にnameのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      # アカウント編集の時にnameとprofileのストロングパラメータを追加
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile])
    end

end