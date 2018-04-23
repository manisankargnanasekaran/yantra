json.extract! user, :id, :first_name, :last_name, :user_name, :email, :password, :is_active, :deleted_at, :auth_tocken, :password_reset_tocken, :password_reset_send_at, :address_id, :contact_id, :tenant_id, :created_at, :updated_at
json.url user_url(user, format: :json)
