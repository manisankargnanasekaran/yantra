module Api
  module V1 
	class SessionsController < ApplicationController
		skip_before_action :check_session, only:[:login_attempt]
	  def login_attempt
        authorized_user = User.authenticate(params)
        if authorized_user == true
          session[:user_id] = "altius"
      	  render json: true
        elsif authorized_user.email.present?
          session[:user_id] = authorized_user.id
          render json: authorized_user
        else
          render json: false
        end
      end
	end
  end
end