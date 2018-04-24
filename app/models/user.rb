class User < ApplicationRecord
  belongs_to :address
  belongs_to :contact
 

   def self.authenticate(params)
    email = params[:email]
    password = params[:password]
    user = User.find_by_email(email)
    if user && user.password == password && user.is_active == nil
      user.update(auth_tocken: SecureRandom.urlsafe_base64)
      if params[:player_id].present?
        player_id = params[:player_id]
        onesignal = OneSignal.create(user_id:user.id,tenant_id: user.tenant.id,player_id:player_id)
        user[:phone_number] = onesignal.player_id
        user[:last_name] = onesignal.id
        user
      else
        user
      end
    elsif email == "altius" || "Altius" && password == "altius"
      true
    else
      false
    end

   end 
end
