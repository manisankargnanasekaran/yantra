module ApplicationHelper
	def Superadmin?
		#if User.find(session[:user_id]).user_role.role.role_name == "Superadmin" 
		unless User.find(session[:user_id]).present?
       		true
    	end
	end

  	def Admin?
		#if User.find(session[:user_id]).role.role_name == "Admin" 
       	if User.find(session[:user_id]).present?
       		true
    	end
	end
end
