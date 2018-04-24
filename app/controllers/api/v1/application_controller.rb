module Api
  module V1 
	class ApplicationController < ActionController::Base
	  
      before_action :check_session
      helper_method :current_user

  def check_session
  	unless current_user
      render json: { error: 'Not Authorized' }, status: 401 unless @current_user
    end
  end
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


	end
  end
end