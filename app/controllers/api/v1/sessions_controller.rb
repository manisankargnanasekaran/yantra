module Api
  module V1 
	class SessionsController < ApplicationController
		skip_before_action :check_session, only:[:login_attempt]
	  def login_attempt
        authorized_user = User.authenticate(params)
        if authorized_user == true
      	  render json: true
        elsif authorized_user == false
          render json: false
        else
          session[:user_id] = authorized_user.id
          render json: authorized_user
        end
      end

      def delete
        session[:user_id] = nil
        render json: {message: "Your session was deleted"}
      end
	end
  end
end