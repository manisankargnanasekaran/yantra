module Api
  module V1 
	class ApplicationController < ActionController::Base
	  #protect_from_forgery with: :exception
	  #def current_user
  		#@current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
      #end

      before_action :check_session
      helper_method :current_user

  def check_session
  	redirect_to login_path unless current_user
  end
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


	end
  end
end