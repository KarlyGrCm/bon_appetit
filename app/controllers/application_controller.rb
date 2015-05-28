class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  def after_sign_in_path_for(user)
  	if user.is_admin?
  		restaurants_path
  	elsif user.is_client? 
      root_url
    elsif user.is_restaurant?
      restaurants_path
  	end
  end
end
