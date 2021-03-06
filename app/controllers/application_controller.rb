class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
    jobs_path
  end

  ## add a username to the devise paramters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:username, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password])
    devise_parameter_sanitizer.permit(:sign_in, keys:[:username, :email])
  end

  

end




